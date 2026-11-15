Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE2A606A331
	for <linux-phy@archiver.kernel.org>; Sun, 15 Nov 2026 20:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P3eR0PPk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JAam+WPb2YngC1tWpmEV2ND/47Pq9/VWDvz6OAhAE68=; b=P3eR0PPkhfbTLqZusgLGKfsYKJ
	aKgyoEGvNTKoieULJ6FmBM/LoycPsQSPBVX0t0SLNR3H/JKP7ivwfpZ+jdm9aJIfE5GESSsfLhjIF
	cYjnz4buaCzlnBhs25k2taAl833gCiYLEl7ralo1Cpxq3V9WtXCiXZk4ee/R3KCkjBv1yzX0i4GWy
	kvRfJy0Pcaw1kxXb+7KYm9YSaQ1mKjXx9cgEPfpZ5yBdMGZPVeUxKxPpSSgCYGlqH8kE+i/KHfhHc
	POEUXBYpZz6CJyV1zcGFthL5IVKc6d+kciHnIeGe2kVgcv5mPyF/RQ53Abuxbt7R+gklDz3WdKFRr
	XUPxTQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgR1-00000000Pni-12CK;
	Sun, 15 Nov 2026 20:02:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSgR0-00000000Pnc-06ev
	for linux-phy@lists.infradead.org;
	Sun, 15 Nov 2026 20:02:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 228BB60F40;
	Sun, 15 Nov 2026 20:02:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 651CE1F000C4;
	Sun, 15 Nov 2026 20:02:38 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/3] phy: cix: Add Sky1 DP PHY driver
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: Luo Liu <Luo.Liu@cixtech.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, 
 vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <sashiko-outbox-192860@kernel.org>
References: <20261102030425.1957585-1-Luo.Liu@cixtech.com>
 <20261102030425.1957585-3-Luo.Liu@cixtech.com>
 <sashiko-outbox-192860@kernel.org>
Date: Sun, 15 Nov 2026 12:02:35 -0800
Message-Id: <179477295532.135135.3835475209766065939.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=261;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=/MMBOiQw6l6mDYjl/NVChHGJRH3wA/AsBJBi6MIn/nI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq+g/dzI6TCUXwkOS4gQPpUvsvWnviIXO6VBbOP
 +vk0WbFNg6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCavoP3QAKCRBVnxHm/pHO
 9RyMB/wOQ7nLJIyuKkkwbCNioj33q2hrjNfwq9Kc7YyuXLXzep0kLVUeLkko+Ot6xQmGA6uiY4z
 4LH1QLd+D6HURN/2Ith4fa0Ms7kfrobRn6mykL+3I5r9kBY4q5JrzXldIZqww+6LzPoPthgBnpz
 mLy3t5v3vNng3XA/BiQcoNoDSBCwxkPW9Fwc+2ZFmjUmM4DW+dajUGo0o18KAKlN6fqKPca/dBf
 LEtc+fJL1u8xJjHhpDTrtGTVOuaq2mLW0JZQOODTOD7P5JNTjSOzZ9rOzBHpuj6uA4v55YJBkhh
 yQE9CGj+SrTkE4px0wFMX7LoIzsPYl/t/5+bGF/rLfpEifuh
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-02 03:23 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] phy: cix: incomplete hardware reset and state desync in cix_dp_reset()

Looks valid.

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
