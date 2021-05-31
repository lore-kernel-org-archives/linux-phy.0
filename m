Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 119CAC47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:23:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE678610A8
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:23:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE678610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL4h3V8Ifgi1f1VYnqLUXt0zStMrI8fzjip6Dlrrxvc=; b=mueoHro0p6gDBQ
	StgQnOq/EdNdZ1BCdIZcOyJBHFGuflmd8+pqzB35uepGRQPH8yAkCgjsrHkuVRhGA+wCxrnuary1N
	5wRnDVeFnPwgswi4r6Frx8Kw3EAspIk0tO4arELf9BcZKX+Ik3eEgNkJFw2qUjL+3/9DBXsFxou9+
	YlvW1/vmeL4SUivXgR8EeNs3V8j3etKtcb0Zl1GdqZr11XSdNkkEEADK+OOpuXV2k0pawJ6gUwaQI
	X8RmKdJux/3o9q6F/04LMvTOz4qIBALMVxOMhMRRjFHLY+4BeyYTCV6e8fTTLbVmplP8jJ6XXia2o
	BP9rNHh6wqa6zGPoBySQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndCO-00BPbO-56; Mon, 31 May 2021 08:23:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndBc-00BPIJ-1n; Mon, 31 May 2021 08:22:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F4296103E;
 Mon, 31 May 2021 08:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622449331;
 bh=0fzSp4PUDxkbwQ9WVqH4hcCf2zwEpJ8nEwsSxZ2qXMM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P5g4kmWxKRIiQlmEELmFcy6P1q0RX5632M4WRbMgqcNCbRP6y5hK+7+hhJl5D+jQk
 WwMtH3WilvLZLAj6RU4dHzJIKHpDrgy+pOSKxgWgEd7rA4+W/p5PdqPLi+EKTNayUb
 2pze2E3bht8vC6w8o6o9XLSiy1PzK2QqGpYLKhL9hB59aY0ciITrPZ9jhp4zgZPShj
 ZgGGh+nT8r4lCx7IEx385D7OfIcTXac3p05zeBCKaCi7lpDQNiQ5cxdVQb37MdpQVZ
 acRkKVkigDkmhLNMbpU71vcBjRa4k0Q6lDwHwT6oo1zGaMCuwtjW2JFI38wz/WK/O/
 N0G8jzqmrmS1A==
Date: Mon, 31 May 2021 13:52:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [RESEND PATCH v2 0/2] STM32 USBPHYC vbus-supply property support
Message-ID: <YLScr5BwfLkk80eF@vkoul-mobl.Dlink>
References: <20210517120821.26466-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517120821.26466-1-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012212_170436_E46C6BE5 
X-CRM114-Status: UNSURE (   5.69  )
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

On 17-05-21, 14:08, Amelie Delaunay wrote:
> STM32 USBPHYC provides two USB High-Speed ports which are used by controllers
> with Host capabilities. That's why vbus-supply has to be supported on each
> phy node.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
