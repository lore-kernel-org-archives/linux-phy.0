Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736F1F419A2
	for <linux-phy@archiver.kernel.org>; Wed, 15 Apr 2026 13:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpEg0GrxkfshMB6RR6GftYM9KSxqM+jOD6kwITtpnM0=; b=1sRb24XFEiog1T
	i4OQ/jr3+eLhgOrR29g54n7KOncvfnCk9+MZ8v+/ZOIyKM3zc8S2+rRluSbzfpNhfo8cFQTQ3h/m+
	4d2MaHW5Sq2WzDhgfMXkISeEd+xZDXx/x6AP03/HSqk7F+4m9hSahBQBdVT9nEFEzIfgKh4sqesIA
	LL5Wsg1yvm612fQZEqaHQog7CQoTnf6dhb7HBcPt314XurS1bfGLXGO47/o7mffVUXRW+6exYZ1ay
	rHMAYVJYCNVuGqF1h30/+D1MBv90foAL8OK/HA7jLRupe3ltAg7XKgek0ZAw/gONzHyKYzX4zNUdP
	wdyqXa9s9J/EhAceBobw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCzvg-00000001AHS-0qma;
	Wed, 15 Apr 2026 13:05:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCzvd-00000001AH6-3zVg
	for linux-phy@lists.infradead.org;
	Wed, 15 Apr 2026 13:05:15 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63F7tSlb764264
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 13:05:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rJK3tyKKPOULevLlFyeKOFJs
	OKc285YnQNkfp8+aIFA=; b=FFJI0OG38YpgrJUdDdk1yuBxodWj08weax6fL3Wj
	f1vn7gUC3O9ItNaTMp0gtqQ7ZSwCS9201JNGYRGv9c/ZYcWrmVwSyMGykl1KQ02e
	nDtUOU0BwW9pHeXiLFvy9X4QI3rGii410vapi7WyetCOQO3Zu2mNgy2OQxS9dHdp
	BW/L2ThIubeaxSSxia1IOnAiLC8PE29fh43Mn2ePKGrzCTYMj6bFECx/TvNQz1MY
	CnSRlIngzreW6id4yZQQskC6Em3ns7mCEjH/pumw4SdRE9kRQ3DThunVyUIUVaeE
	c+dGaWXAEZYpNi0lVR48LrijfArsH3Ys7VvyLmJVUEws4A==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dj6q7s3nq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 13:05:12 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-47545742e67so9797149b6e.3
        for <linux-phy@lists.infradead.org>; Wed, 15 Apr 2026 06:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776258312; x=1776863112; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rJK3tyKKPOULevLlFyeKOFJsOKc285YnQNkfp8+aIFA=;
        b=NznKhXpSSFF8VjpXhseh/Yxq+TdnDq5xwKY6hmOekT/DGGIQWV+YikPxzn5fX2AnVR
         caiQtl5Z+lc7MLE0X/asClCH72xeFl9V+8DapXul2eeSc9z9qrKL4ZSDydJADyMCOqbC
         +hYkfXa+pK1WpSZjCG5a5wEu1wuWMrqjpaNBqwQwLoypBAx7oukWn04H9GRkknuTrtO3
         Kje3zHtlKfZGiSErsd7Y15t39K8GINgyivhf6q+1i071pSsanYyDFWzoudtsGCqAHPlw
         zOkSwH6XQoeh/9RrQmiQfuxRJUpUnGO/FMcQQgZW1uEIAIA6vMM7xbCP7adIjcOr1B83
         C/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776258312; x=1776863112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rJK3tyKKPOULevLlFyeKOFJsOKc285YnQNkfp8+aIFA=;
        b=Fg4GRbgdFo8R9KYwVBQpCLGytVKtmnzLcoFwsDolx5/V70e2jW6QAGKAOaQ9iZRhI3
         aoXwbamn5jA7M9vXRyBuqeRY4AHwghJIlPjg4Jsl+Pb43AqDtRrSNPvGlvsnejjkwPYf
         nBol0qNzgF/lFQvFQQi6bFrOadxKgX1BsLhk6Sy53JTIIZUicfaFhgOE3ahk+gDM96cX
         Git4+z9Zri5HkGP9MjI49nBKOvbH2Oyfmh0vVbF/bEzNlomAIkxwisCufAddZiYEGzkk
         usUqvrg0ikicTD8CQwU8tfZGw+O61V37myMn9RE1E06wNkWg4jrJPkagC12Yh64Uijwn
         XiqQ==
X-Forwarded-Encrypted: i=1; AFNElJ86TTT6lcbTy7gGU4ODq+H6cjVbQYlaamTcxY1phDQ4ZugcrxLKzNuiSJmx+gBjtctTjNEoo9gEnLc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLUjmXWpdu2yedTC2p9ZP6CbzKl90fdaVoo3/DmazklSB5ZE36
	X6xURbB1jyVTlDYLFFFriV0NquC7U+qVZ544qzlyyRC2mfme4EM0vw/ZRuGCsP4FNRLGIP200K/
	O5cE+5UmDQccjZo5k6kOdRr8NzMT4/amSJFy8HxGtdEl4cTBu7A0nkEsf+sqZYMwscQHs
X-Gm-Gg: AeBDieuSsaapntLKy0C282ylD8hiQRM+P3yErgIner/WzESQ6iBl1blTeNmWwEIGH+E
	OZh7js3HG6sWXV8tgyckSZwWyR/dATL31L1EsNig+1J+6tCx0Ktv+HOS+TX7iorfW91jxVHtoIu
	f+ct0/kCU2mE5Ucq2f9orDbblZHdXVFWWe6E5ed+SmAqshnXUOLL1r8ymp5K1ygsKkWZQNn7ZD1
	SpSDMlw54HzHW9bdl7DjtO6mtQkGBmUtg+SPDGvC8GurTrrhgjLcvdMgNzLmefvgRjtRDZMNAWh
	2UYgYAg/YDflnHuCloX2s+lBXdrjFGkhjPLLUJjy2mzxIb77NAI2lgpHsqFfVIJdUTTV3WCPa60
	ySSnc/e3drK1D7rUfAOpx7G5tnImy2elcrhxnCA2REw==
X-Received: by 2002:a05:6808:3084:b0:45e:a52c:e4cd with SMTP id 5614622812f47-4789e91f174mr13198764b6e.27.1776258310653;
        Wed, 15 Apr 2026 06:05:10 -0700 (PDT)
X-Received: by 2002:a05:6808:3084:b0:45e:a52c:e4cd with SMTP id 5614622812f47-4789e91f174mr13198735b6e.27.1776258310101;
        Wed, 15 Apr 2026 06:05:10 -0700 (PDT)
Received: from oss.qualcomm.com ([5.12.73.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488ede1e05bsm217099215e9.6.2026.04.15.06.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2026 06:05:09 -0700 (PDT)
Date: Wed, 15 Apr 2026 16:05:07 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        mani@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure
 after SM8650 G4 fix
Message-ID: <mzqcgnu3cvqvhnuhmy4fdx6rj5tjzm6dzndpg64g64ykcuug5r@scx56dj3pqju>
References: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AvHeGu9P c=1 sm=1 tr=0 ts=69df8d08 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=ub0iOiB/G/eXZwGovfl9ow==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IGLtpV1Bqx4y0bnjnHsA:9 a=CjuIK1q_8ugA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-GUID: u3Wjw8Pf736VcaPSLlirYTxfJO8v2REJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDEyMSBTYWx0ZWRfX2BoQrC5AuYMf
 l57fu2Lbk3hUU/l1ExmELUjTKV+PqA8WdjYce4JsQPWhKjJlt3rtXRauGDZll4PoTuGQJfynHvu
 qsD2DFNWtDi/vmFI74Zn+UebWX/f67hBO4XYG5BttUT/ZIegpsE14vtgV+mKZkRhe6lGFy2wShZ
 17FHc0VFC4KrBW+pexoAkUC5EpnrrJFuOREcJ1rI8fGScAqpgnFivBmBOnGt1Lwzwh/vbGRA2oS
 JBdqOG83n/s9htRFL21uQ34/AomCNo0zc204Fwsk4oLpalQ67Jd5CLFeTNrS68Kg/W1wVNQkOV6
 F8MT8t9o9qAq0b3S7+61hDoeJcBq11/+YMxlkqOTZQNQVbPvhIu4gPXnSFHr0Pw8VbjOcmoSnJN
 egV83D6sJnEoR0PIVtowU2ORSFbNE+4TbpV5A47sR2cv2mw8VATzweOs2fkrQsO6FTtJklokIhZ
 3QYqiJy0RjtPFLYOOyQ==
X-Proofpoint-ORIG-GUID: u3Wjw8Pf736VcaPSLlirYTxfJO8v2REJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0 phishscore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604150121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_060514_004858_0A080508 
X-CRM114-Status: GOOD (  12.46  )
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

On 26-04-15 16:18:51, Nitin Rawat wrote:
> Commit 81af9e40e2e4 ("phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4")
> moved QPHY_V6_PCS_UFS_PLL_CNTL register configuration from the shared
> sm8650_ufsphy_g5_pcs table to the SM8650-specific sm8650_ufsphy_pcs base
> table to fix Gear 4 operation on SM8650.
> 
> However, this change inadvertently broke kaanapali and SM8750 SoCs
> which also rely on the shared sm8650_ufsphy_g5_pcs table for Gear 5
> configuration but use their own sm8750_ufsphy_pcs base table. After the
> change, kaanapali PHYs are left without the required PLL_CNTL = 0x33
> setting, causing the PHY PLL to remain at its hardware reset default
> value, preventing PLL lock and resulting in DME_LINKSTARTUP timeouts.
> 
> Fix this by adding the missing QPHY_V6_PCS_UFS_PLL_CNTL = 0x33 entry
> to the sm8750_ufsphy_pcs table, mirroring what the original commit
> already did for sm8650_ufsphy_pcs.
> 
> Cc: stable@vger.kernel.org # v6.19.12
> Fixes: 81af9e40e2e4 ("phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4")
> Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
