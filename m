Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65AE9E71082
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXtSyPSn6Vqbt5hn2gzg7wt1889N8BDL3odXPuNrF98=; b=4totHW2U2VL+6t
	JfGNQwzgpWPIRdU9qyj/XsnCNJic1TxRQVUqypT6Tb33dtwFe6DZYsNIPCP6INBFCw30MFY4vf4XO
	/cxdWZv8iQE3xxAi5ThZ7fnDQUF7wDCEh4uqBfbkeuUq02bPEh1/JXhy2N4WMjD0vbSiKLE7wfPAh
	onjiMpFJLv9qNZGSV51LYwkTiEsmsz+G0H9De7+clyv0yGbp7ChzUQGzZ5XpgX0MuitIbrjIuL40A
	Xj+j90wy5sBG++Z6CXXYPXvFmV0Eg6v4NW4b/HpExHf+AAIVL5J6FQFfRDZ1J6rwfSsBcalTB+vKK
	6fqq8O2q2oOdOqMcX6kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgU-006H7h-0O;
	Thu, 21 Sep 2023 14:29:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgR-006H56-1L
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:29:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E3AA860DE8;
	Thu, 21 Sep 2023 14:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C98C4E74F;
	Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306574;
	bh=4bbc4KFxteB/Ul25CGRhUsPNrRkXu49opVZPwgJoYRY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cO+X4/GgnHxtTIggHp57WsfT0grOdhO6tbul7FG+POvV+KkKMnzn59Ghk2DDzlZtL
	 AOCYZgeQJHjgzhx/GHpmddYZMcNvn/+VoEzRKEXOewRvhCya7ZG59a57WowOPeNXbt
	 9W2/8adcznrGqEebf/rqhYimiuJAI4HuqQDKUoD8yTTneBDYPT6rXIKTBiy7ZcMGs4
	 dfTPPZh5CC04+Xmx1f998CZcT5Ju5Drjze0UB/Ny7DRJesqfkcVeQo8/Z6YHdTpNa+
	 OHGaOf1IpdzEQlenymzCNjT8xxYtquBD5140sNSSbrTTUIL3nO01q9VgpvFGKwEEUT
	 oB01lwrxnHE8g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Patrice Chotard <patrice.chotard@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230823132224.111326-1-rgallaispou@gmail.com>
References: <20230823132224.111326-1-rgallaispou@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
Message-Id: <169530657238.106263.8150878577535547665.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:32 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072935_498074_60877819 
X-CRM114-Status: UNSURE (   5.21  )
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


On Wed, 23 Aug 2023 15:22:24 +0200, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: st: convert phy-stih407-usb to DT schema
      commit: d61644df75d07863386e0a66fc7306de8b6c5fb0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
