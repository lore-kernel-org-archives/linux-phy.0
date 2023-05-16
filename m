Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B72CC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 12:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V1nNnAM2L6/GVO9ss52WCdObNMzk/j/7Gm15J3n79A=; b=qcbl7fOMU2ShAa
	fYIr+GxiWMmur8bT5XzgRI7UAQ87yTpUqo0u8YfqcMAOQJhYQ9tzCpzRU+Ppx3HALm0/Qik99KBx7
	StD2ygVNTt0IlFZRO0UB3ut5ZZDZ6vghEZmWxhElhZ2TPFXaOvueZ2ZOUW+2sz8bQ8+h+fGDrYr2O
	2pQiBLYRo0VmyIkJsfZbW3LKzuM0bGG0TIh4nAU0nBfb3T2vUR9JwYdzF5krbNrfD1CEc9QE3eDUn
	dwe2YROuMqw1X/I4Ce76qeJ4Zzd5lFI1j7QlQVnspPsOHvR0gtJ/326T1w4AkMKDixN+cXnAg7/nh
	iHvrs31OESqKtp3aXt+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuEO-005oNd-0I;
	Tue, 16 May 2023 12:56:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyuEJ-005oLg-2n
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 12:56:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1FB8A6399D;
	Tue, 16 May 2023 12:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEB70C433EF;
	Tue, 16 May 2023 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684241797;
	bh=kX4Rxpw+Xpgmt8wu5MKO6M/8EfKU9eaYZ8q0eueknLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AeurgxXbjhjO7nH5RPc+ReOKzZIHL6M6vlQfsq3Ynpq17Guc5ms9ErfxRk+cbem40
	 jtZKxinRg29KQc6LBB+bFZlN8CFMgeisnQ2jL9ephNM715Kq8H3YYxX+3L8V8BXqlZ
	 UMHcJydzJ2ec7t82dt6KVZyWSnmQwWyg7jexvmNiXKUVF03ljATeGi7nx20aM6ZtB4
	 tHetdHUCLhlrwEC4m5Uaa263douVGkg3JKOerMWCd5cPGC32EVrMCcs6jfMKPO4e89
	 HWHSPxvdDuLpQwz9QzJyfPndS1ExWSx56euCI03r1FXp8emqsqJ7MmiANzfwRZfQRF
	 Qm5S2TYOfLLrA==
Date: Tue, 16 May 2023 18:26:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, mturquette@baylibre.com,
	sboyd@kernel.org, quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v11 0/9] Enable IPQ9754 USB
Message-ID: <ZGN9gchu7dRb6QwC@matsya>
References: <cover.1683630932.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1683630932.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_055639_972936_EECC4A92 
X-CRM114-Status: UNSURE (   7.50  )
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

On 09-05-23, 17:24, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> configurations for enabling USB on IPQ9754

Applied phy patches, 1,2,5,6

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
