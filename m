Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9107ACAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcaYSS2tWfhHgsecRY5ZVVbKSEmIaGuX0p8Oo51mxo8=; b=Q2Md+kAjmkuVDe
	jyTTjOgAjoCs9WwuDjWYTcXcelmYxJMlWqVieAR+Npm1jagfD+vdz0apYZDJT7cIOCe/9a+1gCW4d
	eQdfnXAP89yn+jbF6r7KoRIXZ4iwa4vy1UNsmRTsAZA0HA4YdjxYlDgQybvjgAMR18NDkWOm5WznS
	WG4rS0bdf6OS5LvHRBnVGS4ri6BkIVVULAXsawdxok9+DEiPFQnH5SACzS6cGc0qnV9cC2pSLrogX
	xDfIF/FQ1XbMjTcn0BsGxIktH2iYzZF400Yowwr7/vXMiNv+Vy5HCOHgFKmK4ikFGkfFABxcaZv1T
	1MeWnO7L510zhC6oDGmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1cCI-00000005Myk-1UfI;
	Thu, 25 Sep 2025 02:59:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1cCG-00000005MyF-1L5S
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:59:05 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1gYDQ019919
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YVhIbwN6AspjG/ncbcs2oWej
	SClutNyLdf6oqsabWes=; b=ecY1Uw/tmpiKZ43veGA4miv+hG7rVv5z2SRAJt/F
	EQqTuFKj/yjj2QfelvNwiNA6Xks+kSz4+BaNM+VoqZ3EkPbiUXhkFIo0gdlIR1J6
	hu1rOiFbl1DjPTxo7FLgTdVOlR1WUuk0e1Osl9XL7qwjXSavTlTCYSWn6Dm+UpKY
	vAoAxheZQ7swzYArZYtpvs/bv2ZahmV25s+sMY5SAgbRQU/JvG8RRXmdOn1MD/aW
	nSj70Vg0RRX5k1zQefbDqTigNuTmbqAXJcKetlf6yHxal43YCDyZJIEITb6nJ1PG
	HW13iuaKoCsstPGToliG9G4BikT+U22WU/tLP9BuYK/Xyw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdyr35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:59:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ca8c6ec82eso11235951cf.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758769143; x=1759373943;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVhIbwN6AspjG/ncbcs2oWejSClutNyLdf6oqsabWes=;
        b=sJbhqq1oazoKhmvuxqC0p48890k2a7Er8gR9dhFisZk5KnUfHT6pByy2sZJ7W9CwoV
         7yf9L+JYwulvEGb5a8XEHwxPclqkZILzlsipvTerjZsFnJ0UkPG/ExcRW+5cbSaMZMmn
         EBMH1fLVq/6R997h62pccXFAkF2utuKZdvOgx9SsPYwuN/mU5vzfRHal7o5o/b+bkO02
         mbmedJ8IdG4W1VeW7ZbEPxdd6UdsxnJQCejHvLZUEg4YKSM+wL7WfoRfUPL7cics+khY
         t4HxdHWfBXvWoBxG45DttotTaOQYxVNwrWNtQx5DLcUD746CispVVnxzU7f22lHHS+e7
         tMkg==
X-Forwarded-Encrypted: i=1; AJvYcCVeLuI69uPc0IDSsRdDFRkRaSLhjYwN1suz354CrAgW6KlvZaIlqG8J5bF8SMyLlwLYZgEc9QSuoeM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv7E/K85RlHxuf6EsJc+52XvRXBxQtCYCaWTLHX0CuFKK0MDWE
	0BXzNanQWKHplpvTzu7hR//VK3yUfdysCmqr58Cx8dg56u26sTXX0I1t/Ufe9iLkygV6KIQFR2n
	p4OqcJ/uUoySKzHRO73dCMQP4yNqwEgbZyvk9jIgE3BaY79U30YZraNk6iZNXJGWs1J1e
X-Gm-Gg: ASbGnct4xrhwYP+0C7+lp81E5AhzLiw8NuipE1LwKhYI0QX0kB8T0zx0st16296fD47
	mzjaCFvFAuqdbqBRXFYmwGct2YX72or03k/KXa5tmfCbGrf9DXnuBNPuta4AOlSc32tJLDqJqLx
	KIuG0uIbsIZVxlBv8UlfXlN/nqYOgG+XHgS7Yhad66pdcpyAyfYbgOedmzaw/KmuJppO1XBaVnJ
	g3McPHeM1Lb58yh/GVwNmvzH7uo0tX1AgOOk2yychHk7RmYDvIDxhtYOfjFsrjS+a3eDsbIhyrX
	AHRvBVei21ndRWzQSSeDoHzMWmjjFq/zDlipVNmDo6Lq0H7eTHVxfK5WNm5wabp7TD3/NDrXZ1B
	RzvisDWKckUwAdxgP1JvGp3MiuyL5+6G8fFwAgEIeOhxGlOUqwORI
X-Received: by 2002:ac8:590b:0:b0:4b7:b2c5:c61a with SMTP id d75a77b69052e-4da4d21edc4mr25363961cf.83.1758769142378;
        Wed, 24 Sep 2025 19:59:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1XnTbfMNHcgRcbCrb+1DBR8eHmzim3EHHlWAZftE/lw4akJE2YkN9j6quohmLlN7TXR0gww==
X-Received: by 2002:ac8:590b:0:b0:4b7:b2c5:c61a with SMTP id d75a77b69052e-4da4d21edc4mr25363851cf.83.1758769141924;
        Wed, 24 Sep 2025 19:59:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316656989sm267325e87.90.2025.09.24.19.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:59:01 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:58:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Message-ID: <p2deqsamovmrcijqhmcss2766owsxfyz7v2uk3mxd5du6e6tse@uo5q2iqwjxj2>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
 <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
 <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5yiFUlxruZiQXG8TUmKpVfzQpW7XdyDi
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4aff7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6Hf86mc1Aoj0dGmY1zEA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 5yiFUlxruZiQXG8TUmKpVfzQpW7XdyDi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX7ZkUi/tEeFYA
 Hl2BFCBElJCB4mz2COeJSoO/JFN56hLqbq26ooAEASBHJAb0pgsjITI/nlb9SzDbG8v2RxJb238
 tfkC2iVGeqAqdRs2LqHxGj0fzpzGM4XE0pZ4bfhyLqjvzDEbe3/7qsHKxt8IAT6LLXvWbaURaUg
 PJizDHmh+YETsdi1fpu+U2Yi5BvU5QVpG+GLlUfSN/RrnPKrbScwBV+uXzF9teMsP58FDsroyf1
 XWKB6Uw7ZrJ4pcRZ3RtTVFPxzB6rV8gqZQCq1jgGcArXVawH0OSgVNgQsA8vRj87dCJ9mjVM+HG
 QYv9d/W2+RmLEwSpLOKqTnaL46VTszAaF2uEfgisMaaRkQ2BjhHzvrkR98jGab1BVtp8BD6ioGY
 Uuj7mUM5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_195904_365731_3322567D 
X-CRM114-Status: GOOD (  21.18  )
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

On Wed, Sep 24, 2025 at 07:12:36PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/24/2025 6:12 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 05:52:20PM -0700, Wesley Cheng wrote:
> > > The Glymur USB subsystem contains a multiport controller, which utilizes
> > > two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
> > >   1 file changed, 35 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > index a1b55168e050..b0ce803d2b49 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > @@ -16,6 +16,7 @@ description:
> > >   properties:
> > >     compatible:
> > >       enum:
> > > +      - qcom,glymur-qmp-usb3-uni-phy
> > >         - qcom,ipq5424-qmp-usb3-phy
> > >         - qcom,ipq6018-qmp-usb3-phy
> > >         - qcom,ipq8074-qmp-usb3-phy
> > > @@ -62,6 +63,8 @@ properties:
> > >     vdda-pll-supply: true
> > > +  refgen-supply: true
> > 
> > Which device is going to provide this supply?
> > 
> 
> This is just a pmic regulator.

Ack, thanks.

> 
> Thanks
> Wesley Cheng
> 
> > > +
> > >     "#clock-cells":
> > >       const: 0
> > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
