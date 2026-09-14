Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9348C88E72
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 14:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jM7tWan25dP0PQiJWBrNL965AhbPFdO2kwKHZcIXbM=; b=K6lQNTL1Mh0dsF
	3ir2B5bQfBIAId4UpSTeGm0OVICgT8u0EPOXz/DT3hoyiIPBPfKpNVfayQQKEXnitSq3Nmy4+8BYm
	CJ2xqg4YDK5FrKrBFHmLPaW3QLBVVQyCVncFsxwX+Zmii3Cnucc7CgmTolNzOv35RJzqzQ7WL3E8I
	7YkArXUT5x15tbQ+xgOCYqh3Ph8fSvFsOA4XbeHob2Vq6PcduOue47RchXC/gI5brZNjLXQxRodA0
	lwzL6fxbj7CpSec+yoAdfjkvUYPGEjBScDy8Ll580Y4izg9eUmm5mhaa3BboHJt7yTffiPR87KIiV
	IsT+P/tYfxFq4YQRg2qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67IG-00000003uoo-1pKp;
	Mon, 14 Sep 2026 14:04:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67IE-00000003una-05MN
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 14:04:23 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68ED0Wpt4157616
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:04:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m52tvn6ZedywlQd/Yfs9lprE
	IgWgSZuxsJ69OVTJm1U=; b=IFWvsc0mzlwWF5IldLivUWX4/QycfW+J/kxGMwsk
	Cp4cX1phyY6ZIt9AFxgzrblrJDbnVSRSMe+DB/MEFir9AqJE9aihU/peJ6+KMIt4
	87P2qaT5RJDDK1rqSlkUsD4Z777oRrqjO7JJK/oLoM0NlBEW7/HrxA+uQ+muSB6l
	kGQXfn46i3t5N58AsUiTBPH3ljiYYnFINCfKsPcrATIaWQ6XLMxug0AKRJJ7XwXe
	u2gdQIT2/hU0nNuMdiP1QlgdwF50StV5l8zyv6ZPHaT+Gcdyxy43ZMon7Eo+gSDD
	dWYTIEV6mlxDxouO99Di2TRloskrmtbcotahqJJwPoU8PA==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpd1f1atu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:04:20 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-80497c6ec88so4502627a34.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 07:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789394659; x=1789999459; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=m52tvn6ZedywlQd/Yfs9lprEIgWgSZuxsJ69OVTJm1U=;
        b=GO5HMQGQUo7hfTBR5HhaaUxsltvz/KJtLJ4ASUg9VxI6u/X74S/C1/Mgcg808lWI0O
         PxqX6VSw7olLFQROLJMe3BYzvZNUJALGlFrHzur3oBKHgUfBsQta7bxp6bgzqYq0x8Vb
         eweXc1KYXTRyYHbU91z+XK72IEXK0I8MSC1TgvNs9b2+gTRu+EkThelcKmPaqI1igvot
         Qmb4MAu4cCotmvSvTBm8lKcwWUrJN3ljJjoZtFhfJM8v7tY7pkQ+kWovbfs7XipEJ0ku
         4b12Yymf8na9iufDmulGqGWtDO6DlepC7s/UUj3+CnK1iw8VGBywwQ3zaPJ8i5z0Ooo1
         IlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789394659; x=1789999459;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m52tvn6ZedywlQd/Yfs9lprEIgWgSZuxsJ69OVTJm1U=;
        b=jYxZG4ZnSW1FldpOTbXqpEIHsf5iGaRmGYSIuroSRgilpYfLdhi/Zs88JIXytdM9bd
         wYiQu2DUvTN2jctxRApKrcIzf5X0nSdtcC9FpnlOpGoXin/w0gOwLuTovIImqdlqzFoM
         KiNNKQF9coSzG9CHvMYK2+z7fpZ529VKgOc4yRNg8U2ALqWxrchn4kDDPD0P3l1a6t7f
         jFx+NvJI9d0uhHsahKSiJhVhMpmmcmkucoLXuLQXMExGePN/pmUYrn7gWh5JFIYxquDt
         nystRRG3IcCRSEtx4f4see0tXNdimy/+LDgJdhU1qkjRfLmqYA5/j/NaTAf8X72qExZ1
         ZL5w==
X-Forwarded-Encrypted: i=1; AKwUvBxkoy8odlf3bkOS7DiL4joJL5JsB+h+luBE5w9gT1z/Xc9+scZvzqR2rE9hHKGlctdmzg9UskytL20=@lists.infradead.org
X-Gm-Message-State: AFuF++n5yWcm8w2Omp/JguwwBGkLYvXcll+0JqQC6rU+26AhJA9pEGQF
	GVWSqZd9khryOi/kco8UhwAKTDASAl74BzmVpzJS/fRDQmhnQNHUFWg20r4AHHYzTpHnEsSR6YQ
	zBdUQXCMfNi3liV2z8ITxVMAGIXJkf2qUJhcN222mE5Mypl2zYsgHJtJ6d1rg14Lg0aE2
X-Gm-Gg: AYBFou2MxMpUy6ZU/aOEI9rZW725NqNSl/uQ9ms2TfuUzVy5JQXyFrZIzwcsd4j05WE
	D0mylUuFsltzxBxNTFM1iVgi42uM4kbUlqp1NNl2ZooY4I6Yt57TEgjq3mzOmocOQ4OKiZlnB0f
	mJ4A748o5koHiDWd+GGc/reutN6g2CH5JITFoErZ5fn0uhxKQFXtL8XQtGX9jJbNI3hEpB06oYJ
	C2biRFPJ59XBcQE8O4ffrl/7hcadNDtXuqX0t7Xu/8TdEkgf6QtMjYyLxosoUpyz/irb+qqMSCE
	A1Zv1UAUctPzptRqmTa/7BgcXwceJrMp3bW53IrYjSwqdZ5ZVOcRo2qUrF4lcRlNz9l8yTsutaP
	uokkIzonR1u7NAQ==
X-Received: by 2002:a4a:e847:0:b0:6be:19a6:fe60 with SMTP id 006d021491bc7-6c54203f16amr1477419eaf.41.1789394659406;
        Mon, 14 Sep 2026 07:04:19 -0700 (PDT)
X-Received: by 2002:a4a:e847:0:b0:6be:19a6:fe60 with SMTP id 006d021491bc7-6c54203f16amr1477303eaf.41.1789394658737;
        Mon, 14 Sep 2026 07:04:18 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d284a7bsm5983725e9.3.2026.09.14.07.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 07:04:17 -0700 (PDT)
Date: Mon, 14 Sep 2026 17:04:15 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
Message-ID: <pngfa3stqy5jelag52kmu2qrzbg2lojrmnuuz6nc5lvfvbdagi@ta4pz4idnu4a>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-4-b9fc5e2ee99a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: viaWIUWpzwyMOUHRTmppryg3OVEQbWJp
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDIwMCBTYWx0ZWRfX/6WaFf59VUjS
 2cjBNTmTVRkNCEF1gBYSK47nkwuaqulqbn/qiLC588EB+W6bAocs0AszZrj9IEFPi6D4Z+1l3ba
 qMVzvWMKRLxuZLoaYqVoE+zVK8UOdF8=
X-Authority-Analysis: v=2.4 cv=XKel2ghE c=1 sm=1 tr=0 ts=6aa7fee4 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Uuv_azA6OBGcZ0en5L0A:9 a=CjuIK1q_8ugA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDIwMCBTYWx0ZWRfX4b/uwl/pLNUg
 09iro9yRobMDJR8wPU0YnoTdDA5bme1D2Glhaxiu4CbNV9ihJ8Gfhu1Z/Ytn0PldDyDgbd8KsjO
 5VSiOmtoqH5veCOWTODe9Y/YfN8f7M289zqp2Ap6LlqqkOCnvu5NIRWLjKs7+BaeAHyfhSJpmyv
 cR4Mup2dJoc1GI2cQsgnhWgSCMVT/3GVKZPdG2Jnxen0vc1WSXpnU5jD0fP7zprP+7e5qScE+R2
 ksNbosBSAiFl0UQJtUEjvlgxIIwq9AnQevLd5o7yfQMHzArcbJLMZK+QaRJXH75yb3AlWPvR1P7
 iLxBYvfbMj/Xfkn8n9gyWzBEkUNJE2R/LG1Q7LcmdlSeIwZR4ZPFGqks0AaaFVvLxFlEBMaE1Ky
 rFcs5XV5jbF664SSwbLYCaDHDXRfqA==
X-Proofpoint-GUID: viaWIUWpzwyMOUHRTmppryg3OVEQbWJp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_03,2026-09-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2609040000 definitions=main-2609140200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_070422_184755_DBA59C07 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

On 26-09-11 22:17:08, Pradeep P V K wrote:
> Enable UFS for glymur-qcb board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

With Konrad's comment addressed, LGTM so:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
