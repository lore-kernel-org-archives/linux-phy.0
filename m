Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D92ACA5FFD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 07:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiUATGhAg+aM97mXRcGmPhFvaYTDZ5TfrP60hE0CKrU=; b=PUrlH6pTVv6HZR
	DyiKujvLSGoA0IyMiZXDVn8YuT8m3o3A9N3ufkcC3+qGw6WRjIjXkkWeUb87S6aRMuZtI0omeAYS9
	FJ0A1oZqKwnGrCPdCJJu+rFzO1g7i9KwkpmQbK4uXop4YDo/j4y/zW0BP3v9qv0NoHVq0lvX+Rxpg
	ZNzbBakZ0OqFJUzvGi4fdQTijMmpO9ACvXyysS4Nhij1yPHmlN19aL6JagDV0/QgOOvOOVQkj27QY
	5L1Ipgwg3BtC0QoW91hbB8x30NY27t97oksNSMzWnCSia8HVXV54VLSMbfqyrpZhKqjpL1L47aigy
	bG5UxVXYbW1QufWluiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDctI-0000000FmI8-3O46;
	Mon, 05 Oct 2026 07:13:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDctE-0000000FmGs-368C
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 07:13:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69510Jqm931004
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 07:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MxyaPeOQSDUKaVQU5hOQMfOj
	aOY9QlWveH2VyoiJ+4k=; b=XMhB5J91ggRI19ODEsBbagxI7i4+b/QKkSNacgXm
	Jb3KBCIaljklpMXzp38950FIlCADwz2R64tIfgJ776p6A5EPnhzv6JDTrvB5HYkd
	/vEg5uE/S2bUtVyeGdbePJ3tE3btUUdye1NJA+alEz33goXTyPSt1D3vLg0l0wKh
	MRqLcx8QIcptnr5K/HbsauefRbd8uJIywKfqy8wiOh9OIgy+yQKkev37+eEH2BSj
	TDj7GZuRp7Hip6k9jaH65g8gzXpA+DU1OWsE1unw1WEQ3xjkYQRwv/afvLV5SCTu
	VVTIvN3ZVi2D/0kQfUJVh2a6xgi97vhPfJIlCaHBNTPypg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sq8vumb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 07:13:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93be1861d2dso249155685a.3
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 00:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791184415; x=1791789215; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MxyaPeOQSDUKaVQU5hOQMfOjaOY9QlWveH2VyoiJ+4k=;
        b=TtHGL9C5OiROuZ4upBCJb47slwgQMQ7W5dQo6xTIJr9ijLUDBVxqQIPYK8DwaRgqa8
         D6BVLtk0AVvaUkPodp9gaQSW/FUqKcfLdxNuz6KJ+B41wIEt4heU5/ay8JEtDSdw+YXk
         4BkhnhUcTRYh0qnU/BvEVo1kU7qfgGWVvA3uc59JCeO/EIeYKsJMFQgkilLQfY6DVcb0
         9RMKUFEDlOo+12WH4HYVuzysY2a6qw5+Sqe+tR1z3mEXHThHZV6yrYnmQyNtqduir0iH
         7lNhmBm/ymq94HQ1I7siH37EpFD2qXtuw0FrkM63qpnRPjPWUiJKTCZ37wdUHH+9DnAA
         /y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791184415; x=1791789215;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MxyaPeOQSDUKaVQU5hOQMfOjaOY9QlWveH2VyoiJ+4k=;
        b=k9/5CTxpRkLVqt+sbyimK4r/H40mXSCeMw5eHxb+mj5OsJPGVN2RBUJloM8CQ+uJ4M
         4M2NT34YJmPTC2ekqJAJdfOpOHxVU7w13P0Slx/GxDfzsdzMIlZ8hhAWfsoUxaDSThXp
         kDb3EJOJVpZOpEmVLbUPJssGd6FiNLjto97YOW+8gV1gnRcDcoCEgRcIKSvn3ksSqq2B
         A2qraWmwItSddf6mvlyHVpiefpPRhR3c8Th2i1I1qAYcj7GFYCBsF1htQg6AsGni4iT8
         kTcU7IzafRqc0fNyVbB636SQhXrC64Sbm+7dBPP88DawoveNYculIH1IzdNgwiUWWCJX
         XJNg==
X-Forwarded-Encrypted: i=1; AKwUvBwmi5fzv17DF27lLz13utkk0NHJSPKniX4SradJtUjgQ9Kv8myeQ5n+dLiIcGLtgai5F95jDvBsPc8=@lists.infradead.org
X-Gm-Message-State: AFuF++mZbQbfLbePwfQknutxdn4RKXA2g3dIT9Ozq5DyQYe5EA6pTSDq
	fJGjlnOfsQdxP+JSfQKgKAwFQ67HmcnR7H7BeQpTOD2C2rCdt5gdbfhSYjZwUOtLh4oj7DPAAU+
	S5gFnSA1v9yIK63w3L7BX6+545lFAOBB00wJFLEqirx3PauaZWeSFwJnpW+03v4ZogkaR
X-Gm-Gg: AYBFou36IKgDFOu1s6/kOByRK/7su90MoNdR/4ggy4r6a/Gy5hyUZscicye3qtecYtS
	H+4ZLcn/vMq10ojgsJEbXzNRs/ZOGPQNljyT5SzOHZYm8k0pH+hQp+oVR4Iu001ZCJbWsYeIBMP
	BAdDcE67GK64OV//76+wEDNJd0OS57WYEQ3GwQI6ji3Qn/kuRnkmoCVs0GEgroDQpv/TUjKJO9v
	jtc7F63rLgZobQ0t2Wl1xBOdeOHmrY4WPNLPgfDjV13v31Yw0ihxQ6/tbYtTEKVk233OSe4qGLB
	ZWMYZiSbF/xMuMlP7B8xsQJS1gNJ+rvE4S0e/FSl4fn+xN1SFhSCmKGZqHimPbCwux5QXy9rQ2B
	4C6po74QjkzN0EFHe3NG9bYd0hFqEKN0r6fI/u+d3OtXFwSLPjL5mMQIzwbzBTqCCkJMJBS6FT+
	maYQ1hLCMbsZzb
X-Received: by 2002:a05:620a:488f:b0:93e:4e1e:aafc with SMTP id af79cd13be357-93e51025780mr1139529085a.36.1791184415076;
        Mon, 05 Oct 2026 00:13:35 -0700 (PDT)
X-Received: by 2002:a05:620a:488f:b0:93e:4e1e:aafc with SMTP id af79cd13be357-93e51025780mr1139525585a.36.1791184414633;
        Mon, 05 Oct 2026 00:13:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5bb7c7bf1a9sm2990635e87.84.2026.10.05.00.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 00:13:33 -0700 (PDT)
Date: Mon, 5 Oct 2026 10:13:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/6] phy: qcom: snps-femto-v2: Fix
 qcom_snps_hsphy_write_mask argument mixup
Message-ID: <7i4rxspd2o24hron5ql4kiccjogqk674foyxaw275mox6dvn3k@cjmwsvebg2su>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
 <20261005-phy-v4-4-b04c4123ecb3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261005-phy-v4-4-b04c4123ecb3@oss.qualcomm.com>
X-Proofpoint-GUID: qP93fKjWalEsD6YU0seNFM1PP7m7yJOM
X-Proofpoint-ORIG-GUID: qP93fKjWalEsD6YU0seNFM1PP7m7yJOM
X-Authority-Analysis: v=2.4 cv=TKzQ2Fla c=1 sm=1 tr=0 ts=6ac34e1f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=CZ6gSvR64lt0KtMMlSYA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX7JGqSpQK+HSp
 eSSIGhPixLZ318TvIZMBzt2LqQSSd3EuG99tfXeoYdCKa1F1ekd5SkYLFjS/3FhlqU4sKmKB3nL
 mZ2epBv78/JddA8ir3qvFJ5dVVTlEeXWXaPbK03kHsP+oj5/ey9D9VdiD7WVmD8RM+NhNOW/U3n
 XYbG/oiGQmgg6DcNK0Y6Wawgxg+txeR5HWrS4IAeOScVkavRkMcMRjQW9Y2EVmmOB+JRtSI+A4Z
 7hI7dSTt3ZgSAbKFghFFeZVyaibtApO+SjrXcZ9ZtgMQaOZwNp83MPxYtmcBMfJFVdFNagyook4
 idRXmtaZhhbIHTVrYaaCQOsLbhw78CcyFLhe0jNtRmrdv0MT5p/biEjtaZTO4/0x9NX1U0KHN/h
 0aI4PbeKFpHtzz0cAH3kb0tukf+KKf0oMgC6RNSUYDIX8KXEJnnJpxDTB85fNg5v7NKAqLGrt1z
 qW4LF1K382fQxnHTCfg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyOCBTYWx0ZWRfX4yoApGXgjgYT
 6+F0w92SLAghWy1Mqnpz8LmRtr1Q6UVwBiQQLxIvYtCUXP67pjeO9ZalMzzUUPOr9JRN16IV3DW
 X8rDItgVOb/uFZ8jbEtdzEHCJ9JmfbQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 suspectscore=0 phishscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_001338_254811_179E1C04 
X-CRM114-Status: GOOD (  14.57  )
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

On Mon, Oct 05, 2026 at 12:06:29PM +0530, Varadarajan Narayanan wrote:
> Fix the register bit field mask & value argument mixup while programming

Fix the order of ... arguments.

With the commti message fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>




> USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
> in qcom_snps_hsphy_suspend().
> 
> Fixes: 51e8114f80d07 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> Fixes: 0d75f508a9d56 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
