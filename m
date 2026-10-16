Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C21BFCCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjVNJQAHuzh9oJu1vr0aXdFkfrOoselFi+ZHP8LE+xU=; b=oZId0dw45OeTXH
	ES+azmkBn5F7HA9/9seCngNd65e5mQcwL+XTD+ywjJSNtheV0Z8XcBiAa9erXf34ikjW+zoA5FPf+
	QW7XMoKrtDSL7X/oKSEU2dILPjb2o7p+GITgtJIQHbsSTNollsJLruXKJUbYvyFOqRDpQYzZ9qAsi
	k6VEsBAhKD+OI9+UqRjCIIa0hf5tXRtFlRatBX/BMJuY81u8v5LK3uHqBEi3QKoV7TzdhOYwiIJd5
	KxDM8V+X0nIbwMcXyaDoNFVo2As45hEbuLbCPjEtq95GjUWdqPJ6bAvePJAo3C6zIDNmVMB083+pe
	RLVTk2W+V/V7AZ39W/Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeay-00000002XYO-1wQi;
	Fri, 16 Oct 2026 09:51:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeax-00000002XYI-0XCA
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:51:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D1BF341389;
	Fri, 16 Oct 2026 09:51:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 652921F000C5;
	Fri, 16 Oct 2026 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792144282;
	bh=w6fBbi5QA/viT0ZxoVG9r4dfqGjmHwHaslsN7TGUrfo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=P1PtIFqxWTM+3brXsLljgeTGO3FzuPbw8/Cg9LI+p8NaaBcq1juwn+eh3y3ezn+1D
	 nXrbB2D9cmtP5yafQBHSfB7LoTERXgUp8K1J1AH8bDoUqWIrSP1vLaJtI09LNQTQSF
	 VJ2Q60xlDF4/M/iveR/MZn/EnZp2UO0fbDMSahgdrjRNHU96YKPGxl/st4l1eO3T8e
	 y/z2NW3YEu4YD9Eqd3JcPYyvhc6F/AB5MXapN0YXhcL90kXN7N/iDNc1j6ddEYVXvR
	 dNTMf6z4WQFIEDXaST0Kuz5fvLyCyOOjfVQ1G62P6d0jlBWRn9eO8pQuAnDShdlC0i
	 +5fp8W9E4kZLw==
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
References: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 15:21:15 +0530
Message-Id: <179214427501.106618.279204804595762060.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=551; i=mani@kernel.org;
 h=from:subject:message-id; bh=27ynNzWJTxAyBzNxKjEdugbB6/6yLEJDl386wCBIZjU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq0fOWUH/p7hlEcTEc3BBSewUO/KocsQO9diRAS
 xdSZqz5kQqJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCatHzlgAKCRBVnxHm/pHO
 9ZcRCACC7jyweft+r42U0GI1WaogEy7EEE8nNQDZOHu/Ks9BoblnEkvJYu2O9fEHx+VegJbr8NQ
 a0wyiCmJxDxW9CSY6A8WQ5s32QkK+J7Gt1Mi0FclZJkcKbvMbslpUrWbXNjHDDjp+VlFOY0p+KV
 xiWAyxraYFsqTfNrxZcPKE0I7S/U45nkOuWb6MfvQWyo/mmnIeAt0Vh42+lmdQkPjpF8q1w5gYJ
 0WR25Fy+i51UdFaHjQRdHj5BxGgCltF9/+GHST+TQefD0pwb6CTvQHx0am6CCWh+bMMrOJlBkIS
 M8bUGDt1zEljWq169+F2CVTK/pAub4QW7CKO+D+HCgByxr1v
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-09-17 15:10 +0530, Krishna Kurapati wrote:
> On Glymur, it is observed that although the exit call is done, there is a
> power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
> well). As per recommendation of HW team, disable the repeater during the
> exit call to prevent this power leakage.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
