Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B939E60A2630
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 10:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mw0OYnq0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=AprRcdk4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aXN0mU+r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDZCM7XvZCAE/7CSuCMMvVQdiOf9wU2LTCXdflZl4oI=; b=mw0OYnq0yt2YBw
	udtFc72QvrBdNtw1CRxXKYGGqAApQbKkTL0XDN7c/128xf/cz97esHVYq/q8+0MuRkCGmuG7T78PX
	rOXvtWpQNDh2p9VsuCxEYrflZpTKgQeflRwZMkcE4W1KmW+uhDsYFvvNq2LCvUToK3oH1WJbX7LVC
	dGqKpsfvSzdbcuRXDWl0MVbM0Yl25LYMGRMp4P+E//rtKAog59fZ3E2CdL4/a+a/f8jlJfIERguak
	h+XP3hyKiAMe4Dxe2EWPDWHjQ0W70wUS6RU76HQCF9sFOoem9bpnOFYov1SUPuBvRWBwgb0v9srXk
	nqhWkeLTX1piAb8ukWOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7P5-00000009TaJ-21IG;
	Tue, 20 Oct 2026 10:49:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ7P2-00000009TZy-1pVp
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 10:49:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KA12QL1324120
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:49:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	trCl0IagpgcoO8afehRhGBb553RQMJrfCqZC+//rWNY=; b=AprRcdk4LR1jWCUu
	ikTATDCUXNBzvj4py/NyCVz0Y08DJJQrwXULba6OSy/LnqcWRfd8m4zT8pyBYBYI
	pRW0JACZOhkLwLkOaEpLqonPtNHEdcL3Wf/hwgBkVkXkHsNS9+cCf/5X56VpVv/H
	FyYzaIHy95DvineVyNXf44lSFPoYZW9hT3c5Hw5Xy02jTkpB09VyZFwY3kdgF6sR
	415q6sxraurE0DwtR4oJ6PCZ4b4xJOqIES0rWVzl3sjIC1LuBqcOMeHg1SWKVb93
	DBHjZu6V2rIJEGXtqueCLC+c4fy3mwYvTsHt7KPAECmEn2AbVJ7O1Q6yPpE8iN6S
	xv+igw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5n24mm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 10:49:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93ea6b66e53so64034785a.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 03:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792493347; x=1793098147; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=trCl0IagpgcoO8afehRhGBb553RQMJrfCqZC+//rWNY=;
        b=aXN0mU+rRwWWKPsezp0Sr8rbOVoWTIg978eAfShEY1RUAFUc20WdTxlE+WTJyxm5mi
         bBm1/LVEoQNCNJuG0rB2SAActm50sd6yCQgBHroZgJ9Ji+6cwwHXCkSk6hLh7zLL6iKM
         fwlEK0xBAOFKVKG9zFDhCohN2s/d2HaBKM3+uKnD6B8/hOB36G1vkiJBVMN4sz35ED3c
         Oy7es32+BdzO+8SUj1+o/sIs5B1Hg6IoTSRlJrPLtvWJr00bPY1AaPgVGr3YILvIG/S4
         QCBCxZNbNirn2/MDCh38zk4AOM1ethJd17mqLXTcxP9/ofcuN8z17xm2TeKHJFxa+1uj
         tFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792493347; x=1793098147;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=trCl0IagpgcoO8afehRhGBb553RQMJrfCqZC+//rWNY=;
        b=hLGZil/exNaJUuaU/492FS05rW1b+5vLqt//Gw4S9H91T6Zez5iJc+A/9KUHAkvwUi
         O7+Ilrwrkfr4dzVLpokD+coqHbj6n6mIjq3FEiJF5NYR2Xkn+PsVq7X4r1QVOaJv6OCA
         J5tJEd5q5QGKN5ac17LA2RQ/EXUZ7lrq/V62BWWqX0dw8Cgp4XjkQguVJLxl/7f1XYWD
         pbaiwmcpJjOZpw/vfG1QFWmPH+PTdp2oJH/dVfPJYmTVZ7EnrPIBfkGcS8p1DRnb6mFD
         QHJJYfntqEBT4zUGUi0Lg8B8kSQb5pDXeNy3gdAQsembbFIh/A6c9szFZeIXEFC6lfq6
         Pleg==
X-Forwarded-Encrypted: i=1; AKwUvByVYVY3AK70SLYQuwdpeiMDThEt+tMiglp0n2tlQaLeggKghMz4ANK5dylzsxocvlY+bhDIKnT/UdQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYIKT5Pk8BFI0QEfn4JsYPZhHGJjIa+K2ULH5aAgBq72YcK6ZGxy
	n0UN7AdoHr969S8uPWiNgpP9vQg2vxT1Uw6NjOtYCVcBTlD0olvSxtafCv8XkoPhx0uFjpvuWD5
	pLhnjt2e1lGBtZ92tY05s3dpvjKrSNt/xAaL1XgenzHiojVAlVa8bqTLPU1SETCm+FOey
X-Gm-Gg: AYBFou2naGyi+g5Zy9AJNfaBWM0Y2igFo7LMmG9FMEu6vj4T0QIC6nIc3utdjgwC85v
	JmN+FK4JSWazvMcc5C02YOE3O4QGs4tnexja+199GARlaIf/ITIzhfMxKQLIYKslwZGFIyrYoqs
	9CZxRFvzIjuxoXpWAkLCNnEDRXLgtllXn4jnth6pqF6RfFbQnwF6hRmGJijiSWXkPO3Sz8tbgs4
	64toXeGrMK5ux7CGXNu0CmUdLo2ATo2BSufwy2oFYV6byRaeu9kKUOqAYmicV2oP9DjdTEzWnEB
	d9HEJTk5hbiApumKKBcCQGfmn4w83wqsBjkWwcP7PK7VRbbF3f1InQZIuMnPFmhJ/a4vyPr4CUL
	U/hL+J6qS2skc7gpJGVE3vg==
X-Received: by 2002:a05:620a:2a0a:b0:93c:61e0:81ff with SMTP id af79cd13be357-93f29b88632mr1974420385a.1.1792493346558;
        Tue, 20 Oct 2026 03:49:06 -0700 (PDT)
X-Received: by 2002:a05:620a:2a0a:b0:93c:61e0:81ff with SMTP id af79cd13be357-93f29b88632mr1974417485a.1.1792493346081;
        Tue, 20 Oct 2026 03:49:06 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c416a4be585sm407740466b.68.2026.10.20.03.49.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 03:49:05 -0700 (PDT)
Message-ID: <d2719210-26a4-4f9d-82bc-e6aa5ff3f2b3@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 12:49:02 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] phy: qcom: snps-femto-v2: Fix order of arguments
 to qcom_snps_hsphy_write_mask
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
 <20261009-phy-v6-4-50408e45bcc1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-4-50408e45bcc1@oss.qualcomm.com>
X-Proofpoint-GUID: vq23H-fXCBLIZJjv2da3yQqbqGhNOTpF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA0MiBTYWx0ZWRfX/6cvNCRPbjcX
 5lP7dONatnouVPTGx7P0VQidjUmHGIR1h+tTKsN2BYMxL6wP3sZtZCF4UtDLhUerNkfZR9VZG3h
 azcypuHeuG388D8t14sZ8mGc1SEDLqw=
X-Proofpoint-ORIG-GUID: vq23H-fXCBLIZJjv2da3yQqbqGhNOTpF
X-Authority-Analysis: v=2.4 cv=A5z5rKWG c=1 sm=1 tr=0 ts=6ad74723 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Iap0342ROmGHmkRQeUEA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA0MiBTYWx0ZWRfXzkw4bybfKp8q
 3oJZLE/ZjSO3ivZBHJeMYno+u4AbdqhD+LF8is2HGzWtqXMcvXHB3nZAq/RsE1vX+e7nB0MREGx
 IZ2zI091AslpS2xoCYNwcQA2X9u61zHbISuHOe3dp1K0maHb2tFV7tip725f7dfrRzN8G65fZs9
 9iNaNhWLuQ/NjnqO+TcFqucI1CK8SMbgUvn2iHbSkfpYSJs37PUcqY2tpx/DtkIQ+hf6Q4QZJKv
 ojbDCC6x0Xzr0NAHG/0ZtKMGtzKdoGoYjfn7BGK4cLEdbYzhhXC8G/ij8xFTnKMd6ih+FrNvlTJ
 tgZ1hNR4shemBYxly5Dwg8PM7mJuPFh8LZRo0qZ0E2T4lcfTGNe5cBldB2u3sHYYLcwz8NZv0wm
 2bovmJLeFWn/MjQ1e1yNs/x0/IVW/JWlJ2UFlr1Vuwtm+5JBGiFCE/bm/MJ4pyfCUiFb2Q9GDqM
 UenqxaYSOKpIuYU38fw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_01,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 phishscore=0 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_034908_591919_F452F4E6 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/9/26 6:49 AM, Varadarajan Narayanan wrote:
> Fix the register bit field mask & value argument order while programming
> USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
> in qcom_snps_hsphy_suspend().
> 
> Fixes: 51e8114f80d07 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> Fixes: 0d75f508a9d56 ("phy: qcom-snps: Add runtime suspend and resume handlers")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
