Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C7DC7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 09:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/KE+xYHeXpeUUP+W+riAoQ+p43PA1GVyiGwTTWhRao=; b=QkpGzIadn23FN2
	Ad2O4fknnDBgfK0RBPjgIR49i2VdCFa8dPAjcG8uVoVB/OSzn50g1E3FK3P08v0vHcYKV+ARkJ53H
	dPO5WI8EMKbUXTS5DOHGsyLk4HJFEYrCBRtmvGKXBwGnYdaLWAM8/y2DeSoN6kORRAPAd9PfKHuqr
	he0t/7ZBwBhmXCorz3lLUqjQMYUsDUOaFJW3o+azo2EnOdvRbf7728LHbAqEcXZnV5Jv8NK2Halor
	1FCDa2mmFv6N9D+2PH9uB1meABnHfQ4Xo2wSdAjJdSBGbZ8xs6TTc/FLQtKz2NfMOLvSEwzK4KPaW
	pRTVnNEgc+qsbda/alOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peBnL-008U7R-1t;
	Mon, 20 Mar 2023 09:27:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peBnJ-008U6V-0Z
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 09:27:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B7115612DF;
	Mon, 20 Mar 2023 09:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B7C7C433EF;
	Mon, 20 Mar 2023 09:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679304428;
	bh=VzoV8gJ0BND3+ou5PUHHzjX5md7tjkjfvtMfbIyIeGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kf6nzbduO0QKxjvOJ9kB1OtkL6AKKYIhGpPJqUVKQBjAheZOe8KkyHY/MfPRXiowe
	 XkSoNZlHqpdFgZDbP5d9YzwFWXv44j/KIkjnQBQMt+dfgx0pkhpIQ/y45A3P4mQ6wZ
	 OZuhlvip+ZPcbVbCgwPJ7xuzSZWOsBbySL85EIduYa+pwo08dVN8/VBHls5+Ip04MR
	 LfRheqihkH9fPy/JcQWbumI8k4cJE8QumhU0zuBwhLMu5AXgEbA2WfPyg0Igl7Yrlh
	 b81sZ77BidakjiHKhOFQuz3XfwFehuENHjCKXvo76rfX0WpL4WjtE+3XU+zrvcIO1c
	 lA6GrmJeOmwxA==
Date: Mon, 20 Mar 2023 14:57:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
	kw@linux.com, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 11/13] phy: qcom-qmp-pcie: Split out EP related init
 sequence for SDX55
Message-ID: <ZBgm5zCth1L2pvJg@matsya>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
 <20230308082424.140224-12-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230308082424.140224-12-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_022709_252847_D21D32D8 
X-CRM114-Status: UNSURE (   6.76  )
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

On 08-03-23, 13:54, Manivannan Sadhasivam wrote:
> In preparation for adding RC support, let's split out the EP related init
> sequence so that the common sequence could be reused by RC as well.

Applied to phy/next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
