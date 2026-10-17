Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2AC6CCF2C1
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+i2MBi+mztQe6vxE4Yv0z9LAgm1uHnOXYlqZmZ0zWY=; b=VJTd+NS1Cky+AG
	HwRMivfdoDyHkxFVVbwokYLTpAlWMoYWvBSVO0MIb8XmUvBKjrbVkOY5r8H07lu/rtYilel9moZsJ
	whV2DlOCY6xTpPie6Il/goDUbgk75a2Fpji0OYbqGvC9AVMKDxVQbxCh/1OAtILCeZu2jGkvefWKy
	s67/wNKtDqt26JrcS1YI234TcJ1BfnUzmh1s0Jr7aqy7OAyi+6iepp4BtmVcqKW/1eHMhTrE0fzHb
	Hyq8geuR622kKgoslgAMW3oejVLk77abBteHrQhUiP3ALnFfKpwwZZN0I4JVMm9htr17Z4IMuaM1B
	yq2q5JfvLBDMPWf+zIfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI8Wk-000000051pM-0GAN;
	Sat, 17 Oct 2026 17:49:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI8Wh-000000051oq-1ING
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:49:00 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGA1tJ466068
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:48:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Ou8ogkNR435OrDIBgnY4JKUYxvqILFoUJ2x+sQgdqc=; b=pBmRWW19n67uiEGr
	mbT51M6fvZ6VAFyrAkl8BlM1cMc636y5XnCOQx990UIlWHlsOUcQeh5umXvxtUKz
	j6qrSCLUD/o66mnrqq+DO1E/x/gCYNC8G1QVIZqR7rsfsyWWsk6L2QV9kTLMphAF
	405KNjZw7Lq7Jbj6Vi4eUZDcB8wmAK6ON8MhG3DHH+9ZkSRGzL132LBPwVn47Z6o
	3UAWUU1eCQ1yVHPYBLk4K56krSEsFGoaFp6ti/6zFCy8SQWvXpxML3DmCeFSvAq3
	woBrsRnfqMiP85VzEK2FxGniEGvJty0CiUtl6JogOUOKLjnJAvqQYsi1IhP49z7m
	UZRzmw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc1d7sdwc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:48:58 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-357e2bc3b1bso1434316eec.0
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792259337; x=1792864137; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Ou8ogkNR435OrDIBgnY4JKUYxvqILFoUJ2x+sQgdqc=;
        b=BBIGh5lMpTom+jba1X0SbbNH5qyOpL2oA6ZyI6lxhh3hDuhnmfH3giINSLo7g+pbO1
         e/THgF1+hKIVArQlOl8nGWmgVyEkAy9LXfNtyvje7foPFbxM3ewd9p9aKyZ56poi/CS9
         iPDixV6FiKvZFnwRqgscbUfymNIB2kOi3FAlsapnm6SDmsaeIq5qfyoMu7quv8HkJK77
         Z9ZXk6uwHbE14RgEDNBosP3CfYrIZVOrFCuxcs4B7w6KRxnjQlugOBJFjEM4xWAq5QVF
         rlbzzLdZp4Hgmzw/rtjv1wGYDFjDLMJlQ5SXcXDwI6KNR1/6FKJPm3amauKszYfYC+ox
         gvOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792259337; x=1792864137;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Ou8ogkNR435OrDIBgnY4JKUYxvqILFoUJ2x+sQgdqc=;
        b=R0ZEaOtPgAfIfn96g3wAvok9Xx/UV0lltr4xKlg/nVLKaLmy5udIQYLBE00Editm2z
         i5dH12GxWZL+aNczrsPeybdxVef3+imOjnxT6C2U8iCn6RdpEoZ8YJIhrHVH4bBBlh3Z
         lrHlvs9Hh1cbxPoYVlB0qwgusC1GlUhL1vS8YQa7WtTennC/gEdqJQbMXkBumBk/bHDo
         IIkpD/MHUnDIBDvkivkhyMr8m8RecCz1FfxdrOeSbdHjO/jIpVKTC+5vjZFq+6FtfhfD
         3XQw9F1kwTon7MgMZOy3Vcbxl+JEjNuArxJ3ZVXu1v4G/8ndfhKRk2UWPUeZiYLYsC5z
         EVpg==
X-Forwarded-Encrypted: i=1; AKwUvBz2JP7fSfOHdcmbnNBmzUEiCwVlBNzuHuWxxx5y6bjFKaNV75ubzF2O9U4JndGj3r4hvu1t6vbVc1A=@lists.infradead.org
X-Gm-Message-State: AFq9FYIxv/KzBlr9ApygIFk81eCJOaHONV5N5DUEkcZ1MjyrSRFY2NAz
	PRDnpnORFsIOqz/c71xWkElfJQz1L3B78TMaeXW56AKorMPORaYnwp7HQ0JTixTFY3W3OXftEgI
	u9UXeh5NFA0epr2cCQi3tfnSDqOTb//32pDx23FJSe0QVVoH/hMo9NJUGf0CyJauW91G6
X-Gm-Gg: AYBFou0ZY1TyA6ImBfnR9sHFO1eyMosqVj8mZl+lys9+qdG+cIy0BLDTcYO3iE0lLiI
	ZhKiI3EEen23rcJX9Qbbdsip58Ib7OSomwyP0EN+73dkVqkpZGMsT/PQBkjur10nZ72VvN6knIu
	tpgW1hIoTpAW7X7QVWtSdryLkAwaBOHTIBJDlzNy6ZAIX/2igVY/xhO5OmShAMcn0eozBc0EP0N
	D3ylpcivK5rHpSDpIXj7n2/chp942BmeJmSOvMJBdJWEINdoyyc06oRSRR7LAqAHA28vaBUWrYy
	YpdDvUQNQJIaT22Xx3q1f6QUmSCRol2VkWXXybpbM90oZ7KLj4YpOyf/ecACmeItEaTCxQYgy1t
	oe/TulxMwCx6MJOKyjLHdfoMR6zQ=
X-Received: by 2002:a05:7022:294:20b0:179:a1d0:be39 with SMTP id a92af1059eb24-18513109770mr4604667c88.29.1792259337051;
        Sat, 17 Oct 2026 10:48:57 -0700 (PDT)
X-Received: by 2002:a05:7022:294:20b0:179:a1d0:be39 with SMTP id a92af1059eb24-18513109770mr4604632c88.29.1792259336472;
        Sat, 17 Oct 2026 10:48:56 -0700 (PDT)
Received: from [192.168.1.8] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831b859142sm15651224c88.18.2026.10.17.10.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 10:48:56 -0700 (PDT)
Message-ID: <851434b3-4cf1-4371-9b4a-57dba8022e13@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 23:18:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>, bod@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA3MCBTYWx0ZWRfX7ylmRLZ9ccy1
 Y026ysdYALE2Xfqfkf5AJtS9rHo7MEIGU6iBoZKV/LIUuFqBShi7uEW1AIc3Lk9iFAiFcNJW/Zw
 M9CkC7N+i0CYELwOiwiV9KxYIx/bQwc=
X-Proofpoint-ORIG-GUID: jtSmbV8nvdX0WZcB6h7vXVcTHedo7NFi
X-Proofpoint-GUID: jtSmbV8nvdX0WZcB6h7vXVcTHedo7NFi
X-Authority-Analysis: v=2.4 cv=K4O3jCWI c=1 sm=1 tr=0 ts=6ad3b50a cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1xeFRXLZlQdsslsJnZkA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA3MCBTYWx0ZWRfX1B3CouOANDRU
 bwPjw6XC/C6ZQYNxi9W7iA6iYZvYFcI0vwT+/4syxTIwENU8NXEmZVvsTUfhMX23f/jCCKNHoKK
 XyDIyTwphQsrPaVyjW0OiZ8caBwZXNyhnTMpW5afiEJ6IVCuA6Ph/NVkamDtj1+XnTqmFuBU4J2
 tseF+jJY2LgIbrLoUC5RL4cgi10W0r6NwxU1bmYaIbIyB4h9/9rGo83idNMowBUt+aMSh+cHmgQ
 QF1v05aQmalkiZw9rTvSeZuocVa6NksBDdYO/I2vi1uKy4/0hQZi+w4ryp0OnJ/jsZjElA39hne
 /MidZv1hSPKfrXDQoYxuijhAs39pmtagNb9fViMb8A7bachCAeCQuVLzXCVTqY9lmTV0zO3VYbW
 UXd2e6bWkxtA9XSLNYePhor+/XmEPDNMXQPiO5sXTAk37MgqrkBIFh2k6NZ5pX+5Y1mhGaEIMeD
 1SkERrHRdw2p+2vcEbQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_104859_468105_1FBAB90A 
X-CRM114-Status: UNSURE (   6.22  )
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



On 17-10-2026 05:24, Anusha Arun Nandi wrote:
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/media/video-interfaces.h>
> +
> +    csiphy0: csiphy@ac9c000 {
> +        compatible = "qcom,sa8775p-csi2-phy";
> +        reg = <0x0ac9c000 0x2000>;
> +
DTS uses 2-cell reg but binding example uses 1-cell. Please align:
  reg = <0x0 0x0ac9c000 0x0 0x2000>;

https://lore.kernel.org/all/20261017001116.2318647-2-anusha.nandi@oss.qualcomm.com/
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
