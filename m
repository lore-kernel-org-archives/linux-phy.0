Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4AB1C43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJuKiZw7wzD/vgNPYk2jbh5EaPpAPuNMSRNg0ZE/rfk=; b=gnct+YV2+f75hi
	U7GT3PNaJIQtrTm2RsRQsBtZxj191CmBxZVOZ5ObkrGtHrJQrDZu5C30IXK4xJc8SE9/CJb6wKQQi
	1eCoYbVncYj71KOslZ6Y/p8gFwFX6eJG4LRxAxCuxnLqYfmTEPd5jWU1xEwYH2jlyziMYpASvUCru
	caNhxybWNT9GONF4NDCtflZyF55OmYTdW/T8JUiQKJT5OPouA2BnkS8ICDotIozXWLKDt2M+Sr5jv
	yVBxpmrV58XeAEt/Ed8fohQbbCZjv2wH2V1nSmgp23Kbzeh7kQQghJ6emELK0SdQnD9qXEk1qzgWj
	678xSXiL/eWtDIRM+9xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9JfQ-00DanW-87; Thu, 07 Jul 2022 05:03:08 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9JfN-00Dame-OG
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 05:03:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3F710B81FF8;
	Thu,  7 Jul 2022 05:03:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2725EC3411E;
	Thu,  7 Jul 2022 05:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657170181;
	bh=n4MgXi7RI8T+h+4dgz+WC4HjXbHnsjGu633E2wxoxnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DvJHlCsX0ZEC8DBzcvYEq3WnkGfxh2+81No+TgNiOGfQwxvhoVodUcCrJIHFKsX86
	 Ogq2baQtFs2T8u/+S1AP07PCpjyZvNi97TNwFrWaRu84iJCirBYYlrHgUr2nxrNppQ
	 CSrR9o2xX4ZYJgX8/v6B/1BklMX5pLujcVAjOxG554IhxgfwvZSSI9upVnOnGavyx6
	 VtejIjNtixJG2AJAm3upIXeRJ0+GxKr/3/48YI6VnKJfNSdx5CpAxz5sUdcLmpsDaT
	 suyeXD7JFM1LQL/ZqhfwvOM2n8UAvv8hur9pwZluMfwYu1cGny2I9kBRBy+QTOYB25
	 RGTU8WenuXeAQ==
Date: Thu, 7 Jul 2022 10:32:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 00/28] phy: qcom-qmp: split register tables
Message-ID: <YsZo/14+2NftV4Ki@matsya>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_220305_973672_D6BEBED7 
X-CRM114-Status: UNSURE (   6.80  )
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

On 05-07-22, 12:42, Dmitry Baryshkov wrote:
> As discussed during sc8280xp PHY review, rework and split QMP register
> tables. Create separate files for most of QMP register kinds. The only
> things left are various DP registers, which will be handled separately.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
