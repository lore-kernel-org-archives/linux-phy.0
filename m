Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D2F0F5581F
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 11:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpEg0GrxkfshMB6RR6GftYM9KSxqM+jOD6kwITtpnM0=; b=KcHhb5FEM5s7QE
	3wGA1kNx+Fs0I+uZtLPkTUGP0+AT+eP5mX/siZzH0xqgNhqOAe0wAyVr7wPT+JyGgrrHLomjRMbU/
	8GQNI4qf0HWbp8cfKRK/4ZR2qR2sie2k03KtRcsWEivsMIYh4iclQqULfa2w3btineldCcZYSZ7Zz
	KryYAcqqkSCC1Qlvg8FuAHCqy7qK6sYGe/10NKXCSfshtqbnWc3eBUEcuxixBlCfy2x1mSGM3gdDz
	WVCvNZzpO04rlZVJYi2mdKCWsRNo82rYMJxNOtvGHzRWZ4ThWqqcxBqJSK2JTVvIozKJPkVeou/P+
	iTfeiyBMxGNoshxHDLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmqF-00000006nov-0CPn;
	Mon, 20 Apr 2026 11:31:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmqD-00000006no3-0WKJ
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 11:31:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K7WtrJ1532112
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 11:30:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rJK3tyKKPOULevLlFyeKOFJs
	OKc285YnQNkfp8+aIFA=; b=DpR26zgwXBk7a2/d90F0Gx0wPwYlrBXd+AfxtVTx
	a61u/PudqIxo9PdozPWh8q2BUrmBgVZH6QD00xB1l80ia/JkU0DEFeMJVZbxTo+i
	GrB9cNcD2pU5QjKM461MDDosHl72ZrW4HtJYLQ3s0o3E4SiBxdQF6LicxNydxjao
	OLHQPT405ls2U3BgPhpg/dJ8fLWmV0QEb4hNnqVDf2xgRXyxJOxIlf8sv4QWrxkZ
	VdEWL8fTkZ3/o5Eb/LwKG36y+qYP2zOCDJapmBkFKRPMU+IQPLyABQPIAa1TJVcy
	UZBrMSmjsSfCTjjqKjgWoQaSqK/8pGcEASTx9V7Ch8mLzw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnfus15td-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 11:30:58 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56f6e1969c8so4834880e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 04:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776684657; x=1777289457; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rJK3tyKKPOULevLlFyeKOFJsOKc285YnQNkfp8+aIFA=;
        b=R9Iua0rR38cMAEKFGxYRybD+gNqZdLgqgZLfMAOFOlJvLXEhatimun3N48EtOdcHMf
         uPFV05gb+BJx6tqgcCbO0/xoRHmQEdUhw4O9e0oTGCCnZDob8x50LLOxPM3n5JNiIjOb
         1cB7ut5mUs+F8pGii6ak32fgXd5IKc49CMYxmFIP/2jSLjVBfXrXUwbDwa3kvU4y1sGm
         vOytPPbYYKn2q1YjpTNvAI+zDSBtMjI4RwIHEr3teneZMi7K+FDwYQ1PuFLRjSIgyM4w
         TJOoKVVOsZwdPzt36M80MUAbe1O+U0obAPiHW5XmMGo3V+pklDtxvTnrWPV003CixEVh
         sGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776684657; x=1777289457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rJK3tyKKPOULevLlFyeKOFJsOKc285YnQNkfp8+aIFA=;
        b=ntw7fK8HrA+bI50ViBS49RGJ4gD3UgQ/fHJVdp6PGrxOqL8p9D7EBwDOpCWQ7hNi27
         xk3uZRBHJ1YqRHjPHojyNKPRKzLfwKA8NmeGWqYkWbV/lhOELzqDuW5otz8bViicloaj
         X1RSRGqWcpQCuGwILAuOC7QvC7K1tcWak3MgVFJ++GZjSvcDusX3hnGiyMb17uKda9K+
         FtGPhCncAqmSHQUWx3V1DBY+PDyo+o4ieTO+2Rbio0nGAjVGIEuQMt/1N6RdxI0ttVPm
         lBDepRo6WTcNpnoMu5L38aL2IBp7zNBzA8oRjx1NzHmCbTQXQ2p9M5/Zn6hodPXBxCBj
         UOgg==
X-Forwarded-Encrypted: i=1; AFNElJ9/nzqjIxqihI15vDoxpgUwPb9cZyL1w6RzQhLJ+1pFwdxUF6qNFwfSv9XqI88Ax2e5veiu7YH1b04=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0lGDyLFrgnanx3YGKQnf+SwzWwyIL8gwBRzjdildjNx9FNQmu
	kssCN+kQPHCaXr2aif6lbqMRhtP4qBl+hqozIFJZgtpHKM0Ww3N5eQcTCih+wpuaWbYwH3NkcJr
	FPG6k4u2tKFYTmAIK37xNnS6W1eeCDxSYsNdhY33k1UoA5rb0NHblTIDEuRhJlfNZECkSvkIivH
	3h
X-Gm-Gg: AeBDievOKxa5UnRZrDfxiQ5fROEbZXQfo/Ngd+G7bBa0+0SK7FrvphjpmHTvU/9Po9E
	gjfrxZfcywXQwPW1lD4IH1CW0ppfLcrEXFzPTzlEjp1wfQA2IEqWcVOwCv4h5OLroA6eOlTLqwZ
	U1LkvHqxHhGn/4V6Lf82EucBC+EZVrlAdosBldtY8dQKDCFN/AYQ+NWd9VhAESJcziWRnRaVa5z
	uocaFfuKXf1eaiM7qIM70eM5xCMXwT+D+cWwl6sx5nasBBo2L/XOFcYd9W+d6ZE3A7i7V/y1vSH
	gVfRVJV06D8ig35uxPPVkC6luLzbFdYvYILvlC1M6PHOEUVTbmKVzkme9tZXXnsWuYGK1ylreyY
	V520VKX7KEd2fpMoFbqF5hZp5+tjYJNvMXB+uzIKVC5YzZXo=
X-Received: by 2002:a05:6123:2e3:b0:56c:fe16:f54b with SMTP id 71dfb90a1353d-56fa59b2e39mr6265127e0c.11.1776684656905;
        Mon, 20 Apr 2026 04:30:56 -0700 (PDT)
X-Received: by 2002:a05:6123:2e3:b0:56c:fe16:f54b with SMTP id 71dfb90a1353d-56fa59b2e39mr6265076e0c.11.1776684656236;
        Mon, 20 Apr 2026 04:30:56 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc100162sm302652885e9.5.2026.04.20.04.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 04:30:55 -0700 (PDT)
Date: Mon, 20 Apr 2026 14:30:53 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        mani@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure
 after SM8650 G4 fix
Message-ID: <iekd5fokqecsqzjtqtp7ai4ibyvs7vcuesxczndts7uvbdxt5g@g35hk4gwkypm>
References: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDExMiBTYWx0ZWRfX2y/nb7Ea4EHk
 pkOImfvjkSxsmS386nlurXm4ZQHQ2GIeAQOvHxlrUeVixc5jNAPS+fLBrLQ8aAe3x3vr97NVzMV
 6y43MRQ1rky/lyh53vEdhzzR6p8GCXkx+5MugZSmb6fh43dkSDy1ZvSM4tVKMr7hb8gQ8ywvh7a
 MayJnF0G2A1VeboURLN8vkrxDKcfnWQgoQJlz2xrVLy7cPlPuQSHQW6bYUcTZM5/QgVgWyKT5am
 LY3mwNy/8JfGQg1xSFr2Gj/atJtJDSedWRjMYnqZmfQVLmUod7GrldXYcCMsxQqloM2Fq7oQ9+k
 DPDVDFEYTdqXJkKLXmIdtWiPNfYpS0xDNqEWcdFO6QfNzqi7gPOhbpAp5vrf6J52VvtXDx2cb0c
 bpi3dX2xXrzmSqB9KgzRe4Rg3loBnpYLAAaQtdbDQqtmcGL7EJTGXhUZ4lK7jBKOnAXjyYKpOZH
 uWTMdjkg1F97lyzYUoA==
X-Proofpoint-GUID: qb21mqK6EZP1HzKIr4LfOPff96WchpLN
X-Authority-Analysis: v=2.4 cv=PMQ/P/qC c=1 sm=1 tr=0 ts=69e60e72 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=EiYrS7xXfcF7w+nkr41hpQ==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IGLtpV1Bqx4y0bnjnHsA:9 a=CjuIK1q_8ugA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-ORIG-GUID: qb21mqK6EZP1HzKIr4LfOPff96WchpLN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_043101_161306_2AB444AC 
X-CRM114-Status: GOOD (  12.53  )
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
