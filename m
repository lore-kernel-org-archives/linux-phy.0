Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C609C5518F
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 08:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCF9vtgAmAoqzMfULVzbvA5h90LQAFAMH4Bo2b2ei5w=; b=IuM5H0QD9G8CPu
	B+6mUiwZcsJ80AqVKqqeQM7GC0uUGwsjlJe9GcBepyol00xOTGeK5lKNGEEKfL1K/vp4hVMngtBtd
	H35MlqOfsKXIvyF6c8nOfywrbEf82r75z3EdmWFbT4XXXZZL5HvXWI1krGuoGLcMYthzDYRORi67P
	nHmIrjWmFf7j/blBnMmZpqt780Gs2dcMno4N5SYFF4EHLqPr28knyLB6lRNO2cnsaJk7RStHM7S8X
	N9KM5b9XNg+b2dM1p+vScUczzT6hCVTJ8vkR6jKN9J+4sk/AXCEOFK8ZUj192sMY/U9HT5nc9PjWy
	Y+2v9NPMwoiZaDtsmo2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAdg-00000001M9Y-3pG8;
	Tue, 04 Aug 2026 08:36:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAdd-00000001M8s-3d8F
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 08:36:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6748C0qY3016213
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 08:36:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CtIYfvuQGYpPMIfnMPrF20Bg
	ArpUrPjM17HZ62h4ejI=; b=k7+lPT8A/gPTokolX0fs5Cqn5siQ7X9XX5HyLdfw
	B06p68pV97/se7TCwC9pJZ9lC7EzH4XDbSdaIU60uLblC3wlqtk3z8UZ9ya6W4CI
	r332ChGwVYFkTB1bnhW7pDea2Pqrx4Zj66BG/nAPxQlkan6h/RgixXs9oMOHCb3h
	DupWlGoPzhBmCe8rzulZ3suUGgIfASTEEG4+jHO2unL7c1NW9rTGZpUzB+c4FXoA
	w1O4I1Ta6mobHXNYHoRZ5PjpOz/X8wY2782+5DzpjZcPdcP85Wp7Kxoz2FnRIsNB
	v9dWVB6wM9E+C4EqY4oDSoKa67a5Xn0amsvrasb6kkuQFQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fu7271e07-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 08:36:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cc640dfde3so49984345ad.1
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 01:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785832599; x=1786437399; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CtIYfvuQGYpPMIfnMPrF20BgArpUrPjM17HZ62h4ejI=;
        b=JNLh+kRwnlbP7CfZ0Fw7xRqHGSt6NVkMB8GytAZIcEbcSq54fhH65IJfH7BfFnVwP5
         t8cTB6MdJaKY0W3GdAtxCAKY1eovKAiHceo7f0tn7CKpJa0VbJZ+qCOid5DYh4K1qmWv
         ikujyrcNS339A2pPExYYNmmCtOK1Eiw0sP5wC1F3aFwI5YRy0Bw2KmA0EyP4ItLfVOv6
         8ZjSc3R9jVEXVr2pGUNYzdBC2RKaQfkzb7edX+z/H8s/mhqwDCaUMSZc0pqS+LTTZb6j
         XsFdIP2bSbRm7ZkmuOHI1KQ1FYBIIyH52Ts6qktI6RALZjnbnANXdQVvwACG9NB0jywU
         BjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785832599; x=1786437399;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CtIYfvuQGYpPMIfnMPrF20BgArpUrPjM17HZ62h4ejI=;
        b=aUntpZl5cpaNTKxLFxE6UdCRXpqzwSErWZeQtxgsb4g03Tz0BhwLU/yxjQSrwYPU9F
         7WPFHwazTAm2WXfp44onco3CCRPxunLhVloK5xxg0vNAyXFqC09AMmZVQ5f0JYQJw+yS
         z3VtTmgBq9Z2iRhvkM25J4tohy5W5a4M3fz6DvQk2Un8j4qc2tKiOGFsm20egAxSLtH/
         mLM1ssHZoNn/l8I7vqsvHgs/29sWQHA+gftY8cPbOdusDWKSP+RGXqAJo5BZ+ldTKWWg
         DdMoWgqUee1fYAeIqaoNapOnPq2H4ZKAAFP+xNgVqoYcuPDZNJiF3oRDLPgAuEqToKIv
         bNHg==
X-Forwarded-Encrypted: i=1; AHgh+RqvMqXll1vyTZxG7+SibNq7JjesK0ifJvdb3O4mC297RTmR1NSCZanxpQu03rzFVSqaMoX3iqv9qbs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxR/c2I7VP+RqNjHDH/PljF9HWbyRl7dWrFIVI+ew/K6d4RB3Hw
	a9jhQMpNElNG5NU9sRRWJRnVeo1ybh+OKCj/PIeKyce7jIfysAZ6btg8yy3QN/Ifwkk7DTX8RX8
	RKQvGQt774tu+pUj1T28FKmEfc6iqD2RdGEr7cJDOHh5s5G0zX67TYCUZX061uLGsoPAP
X-Gm-Gg: AR+sD11O51JQEaHOkCBePH7sImaLnfv85Kb4phOPADlg8cwVaGVQcvujfuzv8NXwKV/
	1nvG17aHHGi59p4jwAXuRtsOb5PsowLfkOe+tzM+eOQidaOqyXHGYlVftnI6xF6q9gniuLJrPJu
	DnuodpZeB7kpJ4RH4Ls7l7QdoLqNCvmvCTTJHPmGT8gSQsp7CktS47x5Inb4vlC/fGn8hup3OWU
	EsC0OmzFv/zt8+wACc5YC6w0AYvjPmWpkVcyy13kDjcClfvYE70Fy9mThP8o4LBGjGQicSrSno7
	xmmCXpZt02HcQo1Crq7KNY+m+4RVwvLDc41iRoWJ9zYQu5G1Ty3owgiLgUFm9HqdqYeVvMnOtpp
	Za8qKSl6Nde01HQ==
X-Received: by 2002:a17:903:4686:b0:2ca:cde5:29c4 with SMTP id d9443c01a7336-2d0523fb501mr134870135ad.47.1785832599260;
        Tue, 04 Aug 2026 01:36:39 -0700 (PDT)
X-Received: by 2002:a17:903:4686:b0:2ca:cde5:29c4 with SMTP id d9443c01a7336-2d0523fb501mr134869715ad.47.1785832598731;
        Tue, 04 Aug 2026 01:36:38 -0700 (PDT)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d0a9ff4d61sm2987295ad.24.2026.08.04.01.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 01:36:38 -0700 (PDT)
Date: Tue, 4 Aug 2026 14:06:30 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/6] Fix regulator voting for the Qualcomm SGMII
 SerDes PHY
Message-ID: <anGkjjDJRRMVT7ds@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDA2NyBTYWx0ZWRfXyWwZkoCNg/AS
 1j6aysvRORkxxGWCrcpNlig5M8+/JKb2GBQwDMIfdNm8h0jpAO9RHmanT+jlBel0oOAiwSjvk/U
 2BxQSTuiFOLqAiR+yEkKCzSi+xnKvWA=
X-Authority-Analysis: v=2.4 cv=Z6Lc2nRA c=1 sm=1 tr=0 ts=6a71a498 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=c92rfblmAAAA:8 a=EUspDBNiAAAA:8 a=qZ3wfW_fQ0jb69Zj-6wA:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-GUID: ycMM7LBEcVoPyQiuGeBwgJXb-g7m4u7U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDA2NyBTYWx0ZWRfX591BLRnYCPm1
 5RcXK7hREGukhaixPulmaeKv8Sp0R7jiHMC3oEZMS2c3z6zbMq4C7cxCIdFmllq5xIonqEJoFeS
 AGrpVVfoYONYGZZyzFjbYS3y2M01TCUUDdNONdNGiP+t0eBzZtWW/4WEtT/Nc4chWGmymGu/uG2
 PUTAMe7T8dE03tF3LlJoZg2N+0Rv5p917Z27Z0zp8XkD5o2rK0KARzvMRUMSXM4WB9WSckii4nX
 fc7nLs0dMDgjxutvEPulk8OPiNaYXFRNxjuHanwmIqMNCj5BQtR+CSG0JVpu55txNrKu7I2XSw0
 4VKeYOz3mrfWLcEB/0tTJ5NXsC5yrtFxG76JJhOXGN++KIQMYsqS7FmEE1z4e9032f4JWZIj3P0
 8lZyGjuT2r/JLzCcXmb+KcPWQWwwKaZEt/D60lVbTQveHHJ96Rph1Qoh5mdWqLZdGme0A9xPiZ3
 WaLFRKcygDiBvpFZBvA==
X-Proofpoint-ORIG-GUID: ycMM7LBEcVoPyQiuGeBwgJXb-g7m4u7U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_02,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608040067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_013642_072189_0593F3A3 
X-CRM114-Status: GOOD (  21.20  )
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

On Tue, Aug 04, 2026 at 12:57:56AM +0530, Mohd Ayaan Anwar wrote:
> This series corrects this by:
> 
>   1. Fixing the DT binding to describe both named supplies.
>   2. Fixing all affected board DTS to use the correct vdda-0p9-supply
>      and vdda-1p2-supply properties.
>   3. Adding bulk regulator support to the PHY driver so it enables both
>      supplies and sets the proper current loads.
> 
> The patches are sequenced to maintain bisectability. With the driver
> change, the PHY framework will continue to vote for the regulator
> described by 'phy-supply'. The DT changes which follow then remove
> 'phy-supply' in favour of 'vdda-0p9' and 'vdda-1p2'.
> 

Sashiko raises some valid concerns [0]:
--
1. This isn't a bug introduced by this patch, but I noticed that
another file in the tree, monaco-monza-som.dtsi, still has the exact
same configuration you are fixing here. It retains the deprecated
phy-supply property and lacks the required 0.9V rail.

Should monaco-monza-som.dtsi be updated similarly in this patch or as a
follow-up in this series?

2. This is a pre-existing issue, but does registering the PHY provider
before setting the driver data create a race condition here?

Looking at the end of qcom_dwmac_sgmii_phy_probe():
	provider = devm_of_phy_provider_register(dev,
	of_phy_simple_xlate);
	if (IS_ERR(provider))
		return PTR_ERR(provider);

	phy_set_drvdata(phy, data);

By calling devm_of_phy_provider_register() first, the PHY is made
available to consumers before phy_set_drvdata() initializes the private
data. If a consumer (such as a deferred probe workqueue) concurrently
looks up the PHY and immediately invokes an operation like
phy_power_on(), could qcom_dwmac_sgmii_phy_power_on() read a NULL
driver data pointer and cause a NULL pointer dereference when
attempting to access data->vregs?
--

For 1., I can either post a follow-up patch or add it as part of v3.

For 2., this is a genuine pre-existing bug. I will raise a separate
patch to move phy_set_drvdata() before devm_of_phy_provider_register()
to close the race window.

	Ayaan

[0] https://sashiko.dev/#/patchset/20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
