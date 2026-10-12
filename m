Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77975CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3nZXRUS6jmd3uPu/bcXbKaQlpvMCF3KRdyb+BBYgBk=; b=zCMmA9kUHWz/Eu
	BsmU6D2vmSDkLqLve6M9gbgWm9yKanotRGXV3MfkBmIyeF2f7Fejm2y7ibKg5dMJ3MjrDzPMAQqK/
	dZYKlSbi3U/yyCzuAfNldh1Ntubqo3QF3eUb93cyNHvKpo69tajR1fv7nOd4Lv7qMOoNLOkwUfEsg
	6G6FrfjWEqmIfPsr1LYWeZkdl4zS2DyPYFBTw9r9bBVLI+V9480GpWKCTvhvT3NP64TkYvMlWqSiH
	V3qPy73fDTceJ3I9iTieCqMDaMSuf5ZwGy0M224gzklaaR3nrnzuxefmCpuShI9rMI7S+RhKRjCuZ
	lKfEnaRfuYxCrxaQq2RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIFI-0000000AqZU-0bdh;
	Mon, 12 Oct 2026 15:47:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIFH-0000000AqWj-0ba6
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:47:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B9F0601FB;
	Mon, 12 Oct 2026 15:47:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E69D1F0089B;
	Mon, 12 Oct 2026 15:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791820041;
	bh=tLHUTormw7i88mv9EGIlHHpt/mJ5WU9EyhPCn8+LmvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hQ3uh/oWoraIzUuGdH7mOgj2uWc4X68WFMaSsINwc17q26uUqWAa/djYDrrqTPOqJ
	 CkdFmr7/PgnH5y8MLr5AjXyYzhXaETd4zzV/xfL0Wy2RxoQ+dvrTdRBZwrXDEgN5sU
	 QvjP8wsXEBHiNcttj5MEr2L2y5g6d1GabVVTlvVU8h5GKAoQgyE1HcTMTuL89BkFxw
	 u9uzc9D3LhOdH6Uqtjl7tu7OtDTzvRuwF8egTYo0UQ6aLAeg1zIkfgy5mLFnO1S3xH
	 cITA8pRHCKhe/1L0M0ykNhclMQwi0r7F6qZXeNw+WQdihTdPx9Fv4BQCy4FTYLweHw
	 ZeRuUO7MTQr+A==
Date: Mon, 12 Oct 2026 21:17:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Oleg Keri <okerixx@gmail.com>, sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com, vkoul@kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: check qmp_combo_com_init()
 in the typec callbacks
Message-ID: <as0A5HpetS75fJrO@debian>
References: <20260916133814.3977-1-okerixx@gmail.com>
 <20260916133814.3977-3-okerixx@gmail.com>
 <20260916135026.AE6401F000FF@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260916135026.AE6401F000FF@smtp.kernel.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMDE6NTA6MjZQTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAyIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtI
aWdoXSBwaHk6IHFtcC1jb21ibzogdW5jbG9ja2VkIE1NSU8gYWNjZXNzIG9uIHRlYXJkb3duIG9y
IHJldHJ5IGFmdGVyIGluaXQgZmFpbHVyZQo+IC0gW01lZGl1bV0gcGh5OiBxbXAtY29tYm86IGRv
dWJsZSBkaXNhYmxlIG9mIGNsb2NrcyBhbmQgcmVndWxhdG9ycyBvbiByZXRyeQoKUGxlYXNlIHRh
a2UgYSBsb29rIGF0IHRoZXNlIHR3byBpc3N1ZXMuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
