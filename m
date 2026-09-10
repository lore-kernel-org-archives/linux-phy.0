Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D1F9C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 06:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwOzLS1PuavUhIOD7NAoJ3MsKYUqtWpfMOoNvACOpZ4=; b=PapJd3p4nKXyH6
	wOnGCEzZ/BaaZqu0x4awhUXuc5KQRvXGASIu1AP1gMbDR/JMD91wbZ2zkji6iQhHx9QDWPQLdPEMm
	S2F8TVF7KUzL2jomXrDj+1I8HaqiabXHNd+sNxz6uq9OfCNxZJ09JAJXhO1PvRw/GAyfV0HVp0hnx
	eujGSE5enCFarA3/MVsNXHKF7oDqaTC/Z5pew9gBK/R9cZlEJsZJxEa/1kwn52XEzD0CkOXS9OUJ6
	Y61rCLH0JdzDL45Hrt+2TFpSSf5pQnN+inwZtdyoHEDCI79vMbMCm6G0e9mWTdnI0m0E6qEtWDjJx
	VEU3J/D3PtHZvbN++QoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YZM-0000000DZ6D-0PvL;
	Thu, 10 Sep 2026 06:47:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4YZK-0000000DZ5o-1rOS
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 06:47:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68A5Gmrm4058744
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YFPGqIoHsHzOQ/AB7GpsF1lM
	lefggCSvMh3OTOdNvHE=; b=ETH+St8DBeVm5VrpEeOhD9UdiWWjSt3eN1NMZpCE
	yNowZjNgaDUR9XltGCKhPsLZhsNYSU7HYlE+Z1dRVTBp/90tBYeXGr6ZPBkZKD94
	V+QVJD3QTWoPxhdrDsSSPbf9SDdyw8QoCYZBdMM6swuVcKLJziYkzO9eW6lWJ8Gm
	hhaArxqZGQyi8MzbdC/02+oZ3q3wJ3nMoDXfcpsE0jyGPK3qj/GKUCei/tiRPQ2w
	GwX6qhSSmNM4t8f3zE1tQRKhcISaUO12rTh7UPBUQyWMzIMJVkGyHotBFqAw/KHn
	EYstR7gSaxEgQ7fqKN7GoxOQhcgscBZpSmsbQSQkrrp2jg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyfth32-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 06:47:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3968dfff779so1133454a91.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 23:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789022852; x=1789627652; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YFPGqIoHsHzOQ/AB7GpsF1lMlefggCSvMh3OTOdNvHE=;
        b=YPOyUqcqf6lQcQoPfOjiITKXLuXzdDqCirN88HJR9pOVzwUHykQymYzFFJ3KyAqJxc
         Q6x1UyKfRSKv9czfbEcavYJHwOSX9GRe8ekuVkezllmJ+dpDywaviCiVMnzEz5Z1MNvO
         9kJbE30hL0t+FgLEPDkMcBeMUjQ/dauoma0Gz4mPVJ+yfsHvUkleybUIoN/A3bZVRPJo
         WLfWRwqJwrttmSEMtz+ECcOv75azx8Dp8pHDO753qLictuoVormIW2mAJnj9EVwFZd0I
         Ak4SIW/u3LEupa1k1OcvzOfmIDdq7Y9WwaFxEKtL9SjqA6k31eUtelrJvd/isXo8AhXh
         G/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789022852; x=1789627652;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YFPGqIoHsHzOQ/AB7GpsF1lMlefggCSvMh3OTOdNvHE=;
        b=SW3SZ93+A3lkoamO8IE+TJD9fQH9GNW9/3ETKyHKB00IiLdO+UPI8qOeL2Te/ctl11
         oM7kMgGvzWqtA1/0j1x48jjGtiMHOu7wHHEV6hFLnsDHKfwnNSMayE6KSh+J1+7phvtP
         1d1MivYQGFTNmWp1xD5y9uJ7/xSQlfqF3s8OjdulvwZcNobFC0v80eLTgxIGGMFNzfdF
         a8qhluOt97LwlN1izLeVU96SGvBxsdVYkLW+o6gcCjZeC/ogNLKoZLR1zds7RCXC8t6I
         hn9koicTYvAslFRxGYqDvNkUDFeWfGBzbVPb9wVf/JXHYcysU6/Inl1yXSu951XEazBi
         v8Tg==
X-Forwarded-Encrypted: i=1; AKwUvBykMLrsyIgwnnNVm8i3OVBGq5QLzy/95aQ2kRmaSA9C5VM+dKZh3oO0oSyoo8+aoZv3PP17kBebzbo=@lists.infradead.org
X-Gm-Message-State: AFuF++nLVEbsfTvM3mMSMOGBYMpHsAZXjwuQMmqN5TQ0Zs2VJJwncMKz
	0bpF1jrovBmERaxZO60K9rRE4PYV+8/jiDnZdfjIN2CKAmS+PeOeYJg5NJlzqTgZ9R5/0pLX+LR
	QkbVqnocBW82nkfWHEDztmsHu2IbIVQypM/M1EtWmp0TwhSS4Sg9DcLKzGcnVzHOCi5FK
X-Gm-Gg: AYBFou2LS/5AN2cCYgWw+tigUAmk1B/LKtYtc5gTSFEZRfOo7dyOrKoJGklod6JgsSi
	MVpSall9aBWW7cbxmPlJZ88D03tnCHpxUrL/Q62EoynOdw0eBvegVEd0SmxndV2ryfdAlIa/SoO
	zKMXukdlMknSv0yitpKtws/7EZurPRzyNfYIQSy83bmDwB5+MUR5me4eYZY7aq0iHwj/sL5ptM2
	Qkyoe+ZBMrW74MKJ2stO1mwIHy+kZRl3VWBZmtC7G8IrL3agVDU/jSmQ2+xcxnQY0XtSNtfq32T
	xcih8wgg5dIts90900/aEvsxaZkyV7vQafNAxFJMvmF5KDGrxUVDGDtrC3w+d6OyXWPj3BPXM7h
	GWO6XadqvM0VZuIgG474KWwCX5BMpSHZjdQ5ndHSp9kU=
X-Received: by 2002:a17:90b:4fc5:b0:398:ceed:b903 with SMTP id 98e67ed59e1d1-39d77962e6fmr4114543a91.11.1789022852307;
        Wed, 09 Sep 2026 23:47:32 -0700 (PDT)
X-Received: by 2002:a17:90b:4fc5:b0:398:ceed:b903 with SMTP id 98e67ed59e1d1-39d77962e6fmr4114497a91.11.1789022851799;
        Wed, 09 Sep 2026 23:47:31 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339aa37dbdsm42950318eec.11.2026.09.09.23.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 23:47:31 -0700 (PDT)
Date: Thu, 10 Sep 2026 14:47:24 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
Message-ID: <aqJSfG1Mj314rbEU@QCOM-aGQu4IUr3Y>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
X-Proofpoint-GUID: P-y6et1v5S9urek4BRchb4BhUDJSMffA
X-Authority-Analysis: v=2.4 cv=GNqdgeNK c=1 sm=1 tr=0 ts=6aa25285 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=Y4sVft1UDeOkrP7wHAgA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: P-y6et1v5S9urek4BRchb4BhUDJSMffA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfX9PCftb2XyPfq
 J16DZTE0M5Oz7jTkAU9sC2usO0sM+H7Oa7nLzuUv+CMKolZb/wSAfOsH7/iTcsJ1ON/2yo7Enhq
 3gQXXvSqlHhLjEYRmx1K+y0FajRtYd2aNEPQMHY3ZVfCEoNOjqU5GJbYmpIEefcCQSGig7bE5+V
 1mO9+e8Sge6I1E9brkG3oCB2YmIYUt5nzoBmDEp4X7Rg78+I16qXxdcZdppsBpnt3xprtrZ23/3
 EUltOjmD4ONUVYzBVP9SxLf0iPwfZHZog7x+8cLWRXhNHKgaqA1Q5NcoppDIMAZy60Xh4b1S160
 CwDYw0qsjwzCiSpNZo0syc1+iB9tRZf0fA2HRgboRDIRP4gzDJbCf5eDxKeZ/KHzbiZTSK2+f1r
 eYNZgybDhNpj5V+8x+HgDR1aKSviSL0TN77jFP8+5TFJxsH86sjdbn/Q8tlivB7GyfOjLbFOwU0
 tq8eUWzHus7i5MMcBoQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDA3MSBTYWx0ZWRfXxf/tIfsCdhnX
 8/0oH5nlWQoayhs7MXd4008EkLt9JCFm5U844AZ355KVOpoIue14m7N9hWJ/9NLvnOm+HhF2weP
 JGAEk66gORUMN3zzr5adxmOKhVCsvgQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-10_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609100071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_234734_624053_D2B64739 
X-CRM114-Status: GOOD (  11.72  )
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

On Wed, Sep 09, 2026 at 05:18:18PM +0530, Krishna Chaitanya Chundru wrote:
> Nord requires a workaround to address a timing convergence issue in the
> PCIe power domain. To avoid the issue, set the CORE_CLK_CGC_DIS and
> AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.
> 
> The SLV_ACLK_CGC_DIS bit is already configured by hardware reset. This
> change adds the remaining required settings as documented in
> QCTDD11972446.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
