Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05640C44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 17:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZpGt90hSQ1kn6GXerBGQsvJljdc3RI4gXv9HLRfWzk=; b=Ckj7pYNSMcli1i
	SDDc76GlsVRQbuARJZoDbv82eytcUE0hwDb1xqFOWr2vNNJeLek6Q65YVxynMVcmjNjqIPh+lbXF8
	QhUWyG8Pawm2G45QYPh5YU/4O+VsXyUB7H2amqyMepTTdhTVGbdpeYTP5G4l9Kh49ObiyN5kVekbf
	5DOFu9RKevrTaHGJW8PChlXEq+gNPNAi0FzlA3Oq/kfF7G0uZ3Tdzl2ZVbhcz8gQvKrMkcmMGuxbR
	lqdZ4p2Yan/XP9xd3ij0eOOdk01gdkIqcsbdDXJAweKzadbzDCkP5par6QL8Wyk6Vs27/MrYhYcYR
	i+o+0jfxKrJG9Jrt0IfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaeN-0000000CRoE-30ZJ;
	Wed, 22 Jul 2026 17:22:31 +0000
Received: from mail-106119.protonmail.ch ([79.135.106.119])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaeL-0000000CRn8-12gI
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 17:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784740946; x=1785000146;
	bh=otgE4BlDNttJLSTdSkPcjBDLB10Ko4Z57qMN5bI2t8E=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=AeBW49hSY5qGGQqGex6CdqUBshJCM96AbFDjgqv7QjSEAQq+DQ2guXEhJCnY7TYhL
	 N2tzv7VOxsl9lctvo5I9CthgbBmZDPnfNW+aoATPO6dR08hRrIK9Omcw11kif3KbQo
	 7aTpNqu/ohps0Sord60LyhJjnLaA+XGBUqspIh1B+62NTFWunDaI248n2mYtW3/w+8
	 gdL5q3XqkXgU+x82Pn0eVT3hMfm2zs/zwHVTqaKoGAKvppkzx3qyKJK70Jy/3CxSle
	 1GhgPlRtTxe+SHcGPslqZWg+fjPvFHTh9zyUaHwLW4IagRml/+vsEKP6JVnlfRVU/U
	 0syE9VepyRD+A==
Date: Wed, 22 Jul 2026 17:22:21 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-combo: Correct pre-emphasis table for QMP v4 DP PHYs
Message-ID: <56b9c83e-e90b-4b95-acff-d0a232069fe0@proton.me>
In-Reply-To: <20260711-sm8450-qol-qmp-v2-1-d14353bd6ff4@proton.me>
References: <20260711-sm8450-qol-qmp-v2-0-d14353bd6ff4@proton.me> <20260711-sm8450-qol-qmp-v2-1-d14353bd6ff4@proton.me>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: 23e43a487f912dc5619a457c760ffd98f8aeb263
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_102229_920367_E82FFC22 
X-CRM114-Status: UNSURE (   4.87  )
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

On 7/11/26 11:13 PM, Esteban Urrutia via B4 Relay wrote:
> Comparing sm8350 and sm8450 tables, this seems to be a typo.
> 
> Fixes: ef14aff107bd ("phy: qcom: com-qmp-combo: add SM8350 & SM8450 support")
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
+Dmitry, is there any update on this?
A confirmation on the tables was requested by Konrad almost a month ago
in v1 [1].
I asked for an update two weeks after, to which Konrad also requested an
update in v1 [2].
Please confirm the correct tables for SM8350/SM8450 so that this commit
can be handled accordingly.

Regards,
Esteban

[1] https://lore.kernel.org/all/4635a665-f605-4647-810d-c9d83a271a86@oss.qualcomm.com/
[2] https://lore.kernel.org/all/7cfbc3dc-c1c7-4e4d-afe4-67a25084f607@oss.qualcomm.com/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
