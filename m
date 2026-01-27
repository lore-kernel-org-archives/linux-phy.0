Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0D4CD25931
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 15:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ko2YMLKBmK9UbdWu5BT6LIKC5HaFgOOwW7GjeqSOayc=; b=p4LiXDuSrL3iUb
	dkecrReQFkdJlcCHn/Dz5ZRIWoy4wNMu5Mp71bRtmsAL5gcIqPVUhGdAxJrGaTX3nnuVi2ObSEDgi
	hFLpWIHaxFtdXk/Mstbkr2MOmkqOxqZB1nayf2+PaFtHLT/AvoSNX8sUxOzOVmrHg2Hb4xkmePlY9
	HaW+ueUT8e9wsSqM8/bVMF9MYeoXKqD2atcmI38+PVE2S0khZa/3g0lhd+JGKuHMUXfZHOSlGYgRF
	lassYlGslIKf6HwERJWSWJZMVbJMpFtYHtF5XgGz7Y6P94iUxNkm4zpJQFPZlX812HB3eiwGfGrlg
	z3/I+o884t15hmXboR9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkko0-0000000EWSE-1dLF;
	Tue, 27 Jan 2026 15:16:36 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkknv-0000000EWRu-2pNn
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 15:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1769526982; x=1770131782; i=markus.elfring@web.de;
	bh=Kl8vBE6cA7nP0Pew8sGcnTA4S3j3M6twEF9tknbjfow=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=nWRSKnHhxASt8mIQpyoDXpl2/x8cfz+aih67Cj/0eRUFfIjqp0zUVhwO1PJR2een
	 9+aqLFdVu7kKGgNfqxcooLTjZFYxUTYI41KgE/MGp/ECAtakU1xYBu6UEsSPAHlVP
	 h3bnrL/5OC1IJR2DQqQE1nMaOJtbU5w9JZf9+9hW7V29dL6g3QA//6D+uEMkfiP01
	 RrglBdkWVUZOSJeMns6eO4c7nCMcaJkTm2kyK/a/WBeAh6VLWzrgQcnp5m3vRlJ0C
	 jRFBAraQZJE2z6n/PHlAj8xg56WwAqgIY9/Q2L1AOouqwqwZlV3oNHLT6raLs6RVu
	 5noKjvgDRwrkIR4TZA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.92.251]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MbTGt-1wHtlP0dvV-00kKrq; Tue, 27
 Jan 2026 16:16:22 +0100
Message-ID: <fa1ed8c5-a424-4585-914d-6d2b5b27b44a@web.de>
Date: Tue, 27 Jan 2026 16:16:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chen Ni <nichen@iscas.ac.cn>, linux-phy@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20260126035551.1615453-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] phy: marvell: phy-mvebu-cp110-comphy: Remove unnecessary
 NULL check before clk_disable_unprepare()
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20260126035551.1615453-1-nichen@iscas.ac.cn>
X-Provags-ID: V03:K1:3G7eeCHwcNtOXsrcp3FvsMnMXZkJzgyMrM92THdq/uf6mw+WQS4
 h/XFmdTs+JidtGOj8Kd//Dmq6I7axVRATV4YCJYVtLXhP10CR0CjR5lP65EJF0mZ9qvRGGG
 vPWPmy515j0yQvrHy+PdKBpXAno3JyUd+z4lnvd9FzUOEZYSae+riHP7uMkBRiYbGr86o94
 GNV7zAbxEZ10ooNyGYkmA==
UI-OutboundReport: notjunk:1;M01:P0:9NNnEk8dnsM=;qzVW1SKOPkU9NgyQhywBNLdqkTU 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 EgsTDTo4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_071633_795987_BA4C689D 
X-CRM114-Status: UNSURE (   3.53  )
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

> clk_disable_unprepare() already checks NULL by using IS_ERR_OR_NULL.

This function calls further functions which perform known input parameter validation.


> Remove unneeded NULL check for clk here.

May two blank lines be omitted accordingly?

Regards,
Markus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
