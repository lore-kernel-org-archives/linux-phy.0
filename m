Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19600CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 21:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUo8UPLEurLNFZZad9j2qSq5g0zgxpbdZgz+3tjQOt0=; b=xEBogKKEYiMQIj
	w58rD78w0SalOw0C8A8guNerFOHHzrHO1PngZN7VnozDMyXRh48tLVEEPYFqs5tnssShWpgnA+ns4
	srE2Sq2785r2v6W5jH/rfI3Rb42XvU34684Dm0GrUIn2KCNFS4I6WkRVCjmS1kEA+skE8T59cgi9z
	eHwcbwmJbHjcd6KUCVvxztZAHALiLvp4UtYM1ejbDslDfy+4nP+szrvWGifPTxjdRFndCHmnrRNa5
	bfzxe2rMMoCHAYF0tGn6wLo9CKFay1bekfBbgU4QmqGl+8sTmC/+4Ncgy217DUEjm0MSjKekqT1NX
	THBvywFisW6qkUSc70ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHAX-00000003pdZ-0Ewd;
	Wed, 13 May 2026 21:31:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHAV-00000003pdC-3iYn
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 21:31:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3F70A60052;
	Wed, 13 May 2026 21:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2229C19425;
	Wed, 13 May 2026 21:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778707863;
	bh=v9lrGxyfM2bJv+VHp3kumYGt3s8mplbT6KKYh3kJ948=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=HCctzBoGjgSiFB6v8su0ZXPWbBzmdmRSKPHHiZ4jAWAH5SOUhVCYwTGvCy/EZNVN5
	 SZXQjYPLmc/gqiGXvtcQRP1oCJo/UKUwx3EBTMLPBJ3OMDYRkpoXwsnXVW4aHClqzp
	 1cjcgoBmBPgAJOhcgZbb/aiwdSZbcBoFZl3b+iVpCfiwjvJAaEdaU2yiluVL+Lo5q7
	 Ue50B6c8j2/i/0JimMQ07Ys04/9D441hBNjS/GPUi7AnLiNth4k39VslqOZdvPOSR9
	 QJnNZmFIOFXLsWq/PhtpbqhWWt+bZ7KZ6n8wS2y5lCvhvZaAWIoToqlBvY4H0hoO21
	 6+594A1M1bA6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] phy: phy-can-transceiver: Move OF ID table
 closer to their user
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260512130552.272476-4-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-4-andriy.shevchenko@linux.intel.com>
Date: Wed, 13 May 2026 21:31:02 +0000
Message-Id: <20260513213102.B2229C19425@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBUaGUgY2hlY2sg
YGlmIChkcnZkYXRhKWAgaW5jb3JyZWN0bHkgcmV0dXJucyBgLUVOT0RFVmAgd2hlbiBtYXRjaCBk
YXRhIGlzIGZvdW5kLCBhbmQgbGVhZHMgdG8gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2hl
biBtYXRjaCBkYXRhIGlzIG1pc3NpbmcuCi0tCgpjb21taXQgZTY0OTdhNDE2YTdlMjE5MTZhYzkz
YmFkMzI5NmMwOTBlODdhMzFkNApBdXRob3I6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZj
aGVua29AbGludXguaW50ZWwuY29tPgoKcGh5OiBwaHktY2FuLXRyYW5zY2VpdmVyOiBNb3ZlIE9G
IElEIHRhYmxlIGNsb3NlciB0byB0aGVpciB1c2VyCgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgY2Fu
X3RyYW5zY2VpdmVyX3BoeV9pZHMgdGFibGUgY2xvc2VyIHRvIGl0cwp1c2VyIGF0IHRoZSBlbmQg
b2YgdGhlIGZpbGUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2Vp
dmVyLmMgYi9kcml2ZXJzL3BoeS9waHktY2FuLXRyYW5zY2VpdmVyLmMKPiBpbmRleCA1Y2ZkMDk3
MzUyMDQ4Li4yMzY1NTk1NmFjZTgwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jYW4t
dHJhbnNjZWl2ZXIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3BoeS1jYW4tdHJhbnNjZWl2ZXIuYwoK
WyAuLi4gXQoKVGhpcyByZWdyZXNzaW9uIHdhc24ndCBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gs
IGJ1dCBieSBhIHByZXZpb3VzCmNvbW1pdCBpbiB0aGUgc2VyaWVzICgicGh5OiBwaHktY2FuLXRy
YW5zY2VpdmVyOiB1c2UKZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkiKS4KCkxvb2tpbmcgYXQgY2Fu
X3RyYW5zY2VpdmVyX3BoeV9wcm9iZSgpLCBkb2VzIHRoaXMgY29kZSBjb3JyZWN0bHkgaGFuZGxl
IHRoZQptYXRjaCBkYXRhPwoKZHJpdmVycy9waHkvcGh5LWNhbi10cmFuc2NlaXZlci5jOmNhbl90
cmFuc2NlaXZlcl9waHlfcHJvYmUoKSB7CiAgICAuLi4KCWRydmRhdGEgPSBkZXZpY2VfZ2V0X21h
dGNoX2RhdGEoZGV2KTsKCWlmIChkcnZkYXRhKQoJCXJldHVybiAtRU5PREVWOwoKCWlmIChkcnZk
YXRhLT5mbGFncyAmIENBTl9UUkFOU0NFSVZFUl9EVUFMX0NIKQogICAgLi4uCn0KCkl0IGFwcGVh
cnMgdGhhdCBpZiBtYXRjaCBkYXRhIGlzIHN1Y2Nlc3NmdWxseSBmb3VuZCwgdGhlIHByb2JlIHdp
bGwgcmV0dXJuCi1FTk9ERVYuCgpDb252ZXJzZWx5LCBpZiBubyBtYXRjaCBkYXRhIGlzIGZvdW5k
LCB0aGUgY29uZGl0aW9uIGV2YWx1YXRlcyB0byBmYWxzZSwKYW5kIGV4ZWN1dGlvbiBwcm9jZWVk
cyB0byBkZXJlZmVyZW5jZSB0aGUgTlVMTCBkcnZkYXRhIHBvaW50ZXIuCgpTaG91bGQgdGhlIGNv
bmRpdGlvbiBiZSBjaGFuZ2VkIHRvIGNoZWNrIGZvciAhZHJ2ZGF0YSBpbnN0ZWFkPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUx
MjEzMDU1Mi4yNzI0NzYtMS1hbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20/cGFydD0z
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
