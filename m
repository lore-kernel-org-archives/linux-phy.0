Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB51A10F2865
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 20:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBfrXr1dVTjfaeRZKjIMRw512hTZMgRJ1EBacs1TnW0=; b=MBU0jxhzDwUnRs
	ztJCtpfkqbLG6kvqLNOrx/V+ozL87+XelVWMq9YZrkLxP9N3CoSHjCsCrj6fsD9lU4YgXyQ5GHI9A
	dSPJnvZWNcLECgZm3AKvPSXi0pTUQKiMB3FqG+D4xeEQAXtSSLCcqROhreHdNOHWvcmzqkGexKsq1
	JoGTKZG9rh2VBh1so5oPlrtBMuQHRbSWLDuEXCioxBSyLhuIM3h6wV7C149h5Nah5WUjB+FLPKU6e
	XQX/ESnCj/R5JOIdybmu6rz6gNE5FEDdo6zyHiFdf7PPwda2XGx6J3VWBsP77hIi1xxIhEvaQrb/w
	PoNJ4l/bjLCUqP3ObIAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6E9O-00000008CQE-26zj;
	Fri, 27 Mar 2026 20:51:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6E9K-00000008CP4-2tmL
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 20:51:25 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62RI2otI3351908
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 20:51:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5vNj1FkteFeY/dYUVbMc/bS/
	d+JE8rzOzKMJKumnlKY=; b=mcgozyTN+95TSr5y+vMcle6H75WtNTDawO4OJPxB
	8OiSc//+NEPdLsjDNRwlFZ44/U9KAz+sKWjb89Nq8QOxYg9LX0a0cgR9M4Ho8Uwm
	EuBLRlI1vWRUnZad1isiC1+7jzhjvZZu4MMWVhb7lU8y/evPuMtfwsFimzrSOdAd
	in262LVUWrQoTSV+yNi7TSs0fcPQI6nceztj+L+/aXnjyuHLEcVswJPan65XZ3Ba
	O95oYjPDxrTMI6KHwfBV0MwoThdw3WYom28iMTQTUTxUZ0rT2NAswUHfblQJBdBr
	D16y6YxSVLP+lQTnlYXanNRFE2lBILf6geFIBeOF27/cvA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5bxv4n7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 20:51:12 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50911c94db1so61102331cf.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 13:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774644671; x=1775249471; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5vNj1FkteFeY/dYUVbMc/bS/d+JE8rzOzKMJKumnlKY=;
        b=GVucg6glymEMnR/0pEYnvGcxdcfZCQpS1NhkbhzvG0fBDYy2CdS21wf30kCzQWOO0c
         jAhdv1stocjGaZ7Ak7f1YkDsfAtluD16kvmpJ63aJj4v3j3oh8o8jZZaf6C6j0uSHLYs
         ZmcxdxAW5CuNVz7BFjZHK4b9W8r6A2e7Xebfl+uP7IwQypkzV/5WJIIpMOHxE3AD3KxJ
         a3zRxLVe04eJ/hvFjpxkUL5dJRTZsAjbVr/XopJw2EJ7Cm3x8ZKLDHd+8T2yw0W0aUR0
         P2QciAqfafBnuGDi00pIgWoN/w1KLn0seBs8n2bhhJPwGteGHsayM3zlmgU+lU9cfh4J
         i3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774644671; x=1775249471;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vNj1FkteFeY/dYUVbMc/bS/d+JE8rzOzKMJKumnlKY=;
        b=F2FYXA10JEEsKXH/DK4YSeBQO3pxv0VXU4JpqMcfFTDc6iBh+IBBo34vWZhKg2k1Vb
         tougtaZToz89gLOgERe/eQd6YC5WR4Q5ZWSey436G/nRZpyahl+IJoFw6+00kE5Syj2F
         9ziGZ8p51RlSE64y90uTGHMS4iYA+l7lTCBtRk71HqyxMnZYmDR3kyqBPMDjnvzpnjVo
         0IABdJROdzoEJYyaG7WrxpoQT7oBFtUMpxrvLV1Mg5Jz7QxAKsJ/rGA5+cWe/cjsdM85
         y7VaAahFHE4rE5eWfANI6Mf5WC0Mx1XLSR/rTq/ckaFS49tye9rQHhlDR7oUwOEzWz6y
         vTgA==
X-Forwarded-Encrypted: i=1; AJvYcCUk7+wrwHu0BrwtP6WQBzdTq3P3qJixidSSIex0AhhjFskTojhZukCl+r3PzpsqjaNqWEaTdGs7zeA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzqovfDFDAqq7aBygoxoOoWQ3LRsrdO2MEsyW6aCS9vMjliWhg
	5UcVe5ruuHJit2H46N2zbwJ2k3dcBwiFlGAoScwZCSWZAm/S0LuAuY+84shpCW7T94oX4K642La
	1C2u0SySDGdzExTWb+dsWoX9/VbXqwsjnjXV8xPyCm8XbUqbe/Foi4MLk0Ifxn79bevO+
X-Gm-Gg: ATEYQzwHTvZ4Uvg8vUQm0WuRIK0QSDO9IyiJOm5JFsREM7Exi7JVMP90vjCP2uOzebF
	UcdlRut/W90lmTEz0HLCsi0spUcFYTDoqbZZdcTBO0QpkY39+vflxZlXCTZKZINQSJsJJwkIm78
	gSo6aCYCRJbvWuXDeDj+sBJg80j0NJwGQYT/GSPY5vlaPQmCqehs4FJ8dhEM5WZwHsTdSeWl5gT
	ybvp0gylJCxHEAFVzIXMNHXPGuX6qZ+i+DUzARkSzmWjBolukO0VDS9XQFZ35Exg3Iw60xefDV3
	Rd/3rdUQqnY9+N2K7phk6fKbkJlpMQKQlULxLbibhd9pt7j3UxdW0oEFE15gytuEUj+w/PlLFuX
	9zlDtQ4HyJ08xAsi6/xKD7q36MBDRWdy6utIIIi7qSSc5zASV6YtDcgJuXMHA86RKmXO6UUcLw6
	m6yGl0CKUeI3SerGQUae2UQpdEVxClz+yHTpY=
X-Received: by 2002:a05:622a:510:b0:50b:3a6d:db5d with SMTP id d75a77b69052e-50ba39ad465mr55341021cf.65.1774644671588;
        Fri, 27 Mar 2026 13:51:11 -0700 (PDT)
X-Received: by 2002:a05:622a:510:b0:50b:3a6d:db5d with SMTP id d75a77b69052e-50ba39ad465mr55340701cf.65.1774644671181;
        Fri, 27 Mar 2026 13:51:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b13f4329sm16395e87.3.2026.03.27.13.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 13:51:10 -0700 (PDT)
Date: Fri, 27 Mar 2026 22:51:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
X-Authority-Analysis: v=2.4 cv=A99h/qWG c=1 sm=1 tr=0 ts=69c6edc0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=g4nqrqiC9Za9_vF1seoA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ULiIMitaQ6koRbP8sIovQGs6hNYmickD
X-Proofpoint-GUID: ULiIMitaQ6koRbP8sIovQGs6hNYmickD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDE0NiBTYWx0ZWRfXwlgfthgGdY7U
 BAJhV/E3SZ4vFmhKS9DkhFBYcpFIo+ZOT6uLdwhnMyT/dA4VZDWwojb27DJSEdjiv0x7dIxCQpQ
 SZ/8xtVwoK6ta5nM/DecaWPu84tYZnc2WLdK2Mf1GLW3vhL85WdRUc32RDwFmjuqNMQAwQ31rzi
 cFh+F4UdNgzgOfk4OtiHkh9z3AmGZ4Cc2B68tdng8vIiFUP48zy/QHUJ6ZOfToz6cw0OeZfZZdc
 Ql18QxWImBwkyKJYloQxVnJnSgy8VitpjYbgyJDZpZvtmTWOaZqeZ55CBGCiLb32wbb5e1uzJfu
 DNlqZgDtDi17q1iC3630lmuarK2gx04lw8apVEDAmVa85HVjwicjNIfxKk3gyie5erFTSfd0fjL
 9LgxVg4Ir9r4M9O5jAW6Amqyp5LlLciucRVQNqDphlufC3to26GDEx1gidirAvR/9OCNjrEXFQn
 NFgTQ7YKKaY2XSk5Srg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-27_01,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_135124_198551_26605602 
X-CRM114-Status: GOOD (  31.39  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Mar 26, 2026 at 02:42:10PM +0000, Bryan O'Donoghue wrote:
> On 26/03/2026 10:28, Vladimir Zapolskiy wrote:
> > On 3/26/26 04:03, Bryan O'Donoghue wrote:
> > > On 26/03/2026 01:46, Vladimir Zapolskiy wrote:
> > > > On 3/26/26 03:04, Bryan O'Donoghue wrote:
> > > > > Add a base schema initially compatible with x1e80100 to describe MIPI
> > > > > CSI2
> > > > > PHY devices.
> > > > > 
> > > > > The hardware can support both CPHY, DPHY and a special split-mode
> > > > > DPHY. We
> > > > > capture those modes as:
> > > > > 
> > > > > - PHY_QCOM_CSI2_MODE_DPHY
> > > > > - PHY_QCOM_CSI2_MODE_CPHY
> > > > > - PHY_QCOM_CSI2_MODE_SPLIT_DPHY
> > > > 
> > > > Distinction between PHY_QCOM_CSI2_MODE_DPHY and
> > > > PHY_QCOM_CSI2_MODE_SPLIT_DPHY
> > > > is
> > > > 1) insufficient in just this simplistic form, because the assignment of
> > > > particular lanes is also needed,
> > > > 2) and under the assumption that the lane mapping is set somewhere else,
> > > > then
> > > > there should be no difference between PHY_QCOM_CSI2_MODE_{DPHY,SPLIT_DPHY},
> > > > it's just DPHY, and the subtype is deductible from data-lanes property on
> > > > the consumer side.
> > > > 
> > > > So far the rationale is unclear, why anything above regular PHY_TYPE_DPHY
> > > > and PHY_TYPE_CPHY is needed here, those two are sufficient.
> > > 
> > > Because knowing the split-mode exists and that you have asked about how
> > > such a thing would be supported, I thought about how to represent that
> > > mode right from the start, even if we don't support it.
> > 
> > It is good to think about this hardware confguration in advance, however
> > the process of describing such hardware setup is incomplete.
> > 
> > > 
> > > To support split phy we will need to pass the parameter.
> > 
> > What you call "split phy" is a DPHY, and "split phy" can not be supported
> > by adding this parameter, because it does not provide information about
> > lanes, and after removing this information it is just DPHY.
> 
> That's just not true. If you read the camx source code you can see
> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
> PHY to support.

This needs to be identified from the data-lanes / clock-lanes topology.
And once you do that, there would be (probably) no difference in the
hardware definition.


In other words, I'd also ask to drop this mode from the DT. This
infromation can and should be deduced from other, already-defined
properties.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
