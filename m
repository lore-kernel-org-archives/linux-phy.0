Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4960CCD5BD5
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtjhZcf07RPRzF/tU42vUIQHJRavjw3Pm2B2+KkYblE=; b=qqXWNTVX4M6cZc
	wV8Unhbb/zrC0hUvJSISW/dHVNt1X2sCW0N0XW49hHxqmAGyoai5xOixz5PTT1OYHGa06bG/GxJWa
	So0YQUNK28mPVNPphlfZkD2Bymk9kwoGQ1he/9hVqgZ4f/JxhYoC/BvBS0stq9e1rhJBqH3H3rPvL
	IEWTsb8lNyWjqX7KC2zaRikLMhw5uakCV1zOFmQlCz73fisQ25WXkFhYIwvlqQW86+Y3mxxLUYJHS
	v4OkurgG3GYnQSXkEodKm3eal1MtX56FWZrhZtncvc7hyz0WuEBBpRi7yDGZoxeIeIWcipRxRlFQl
	koviNQ2rqvPXIh6vtzdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeoF-000000067vP-0GY7;
	Thu, 28 May 2026 17:46:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeoE-000000067vD-0Ii4
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:46:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 331C86020A;
	Thu, 28 May 2026 17:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFEE91F000E9;
	Thu, 28 May 2026 17:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779990376;
	bh=8BGoj8s2TqbRqge8xPeA7si5cL4GG8tle5jkGLQATc8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ht0rXFcUKRQcT/lLGYxao5IcwAD0IFEC/HqUMGq2gvyDZ1D3WGd2Owt7QMCcl8HsO
	 vHfH82O3JH4986Y+MozM/6QusKgkR65VoHHd2yJPCbAKjQRkU4Vfa2uHW4LfPHYR7y
	 4RZHBz9ARpQUwOyOxNZAjv8Kp2P7faknUEc9TrBk+J7f5o9vE64z5E1QoKTvEuZc9E
	 0r3AFxa62KQzUrUSvCl0BN0wZBmwUP8GQPbeHGHMq0OokMD74rF2UN1MFaE0KEzOPJ
	 KWqgGMXZH8rDK3i46VyolwBd/l6R7G/XoCoIVas3+ttjkgm5zCW4LzXYTCwTn2E+WF
	 D+qiWNJmKu1Hw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH phy-next 08/13] phy: lynx-28g: make
 lynx_28g_pll_read_configuration() callable per PLL
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260528172404.733196-9-vladimir.oltean@nxp.com>
References: <20260528172404.733196-9-vladimir.oltean@nxp.com>
Date: Thu, 28 May 2026 17:46:16 +0000
Message-Id: <20260528174616.AFEE91F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVHlwbyBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UgY2xhaW1pbmcgYSBjaGFuZ2UgdG8gYGx5bnhfMjhnX2xhbmVfcmVhZF9jb25m
aWd1cmF0aW9uKClgIGluc3RlYWQgb2YgYGx5bnhfMjhnX3BsbF9yZWFkX2NvbmZpZ3VyYXRpb24o
KWAuCi0tCgpjb21taXQgODIwNGFjYzA0ODgxY2I4NWNlNDEyYjljZjc2MTMxZjljNjk5MDRjNQpB
dXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CgpwaHk6IGx5
bngtMjhnOiBtYWtlIGx5bnhfMjhnX3BsbF9yZWFkX2NvbmZpZ3VyYXRpb24oKSBjYWxsYWJsZSBw
ZXIgUExMCgpUaGlzIGNvbW1pdCBtb2RpZmllcyB0aGUgbHlueF8yOGdfcGxsX3JlYWRfY29uZmln
dXJhdGlvbiBmdW5jdGlvbiBzbyB0aGF0Cml0IHByb2Nlc3NlcyBhIHNpbmdsZSBQTEwgc3RydWN0
dXJlIHJhdGhlciB0aGFuIGl0ZXJhdGluZyBvdmVyIGFsbCBQTExzCmludGVybmFsbHkuIFRoZSBs
b29wIGl0ZXJhdGluZyBvdmVyIHRoZSBQTExzIGlzIG1vdmVkIHRvIHRoZSBjYWxsIHNpdGUgaW4K
bHlueF8yOGdfcHJvYmUuCgo+IFRoZXJlIGlzIG5vIGZ1bmN0aW9uYWwgcmVhc29uLCBidXQgbHlu
eF8yOGdfbGFuZV9yZWFkX2NvbmZpZ3VyYXRpb24oKSBpcwo+IGNhbGxlZCBwZXIgbGFuZSBhbmQg
bHlueF8yOGdfcGxsX3JlYWRfY29uZmlndXJhdGlvbigpIGl0ZXJhdGVzIG92ZXIgUExMcwo+IGlu
dGVybmFsbHkuIFNvIHRoZSBBUEkgZXhwb3J0ZWQgYnkgdGhlIGx5bnhfaW5mbyBzdHJ1Y3R1cmUg
d291bGQgbm90IGJlCj4gdW5pZm9ybS4gQ2hhbmdlIGx5bnhfMjhnX2xhbmVfcmVhZF9jb25maWd1
cmF0aW9uKCkgdG8gYWxzbyBwZXJtaXQKPiByZWFkaW5nIHRoZSBQTEwgY29uZmlndXJhdGlvbiBp
bmRpdmlkdWFsbHksIGFuZCBtb3ZlIHRoZSBmb3IgbG9vcCBhdCB0aGUKPiBjYWxsIHNpdGUuCgpb
U2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHRoZXJlIGFwcGVhcnMgdG8gYmUg
YSB0eXBvIGluIHRoZSBjb21taXQgbWVzc2FnZS4KSXQgbWVudGlvbnMgY2hhbmdpbmcgbHlueF8y
OGdfbGFuZV9yZWFkX2NvbmZpZ3VyYXRpb24gdG8gcGVybWl0IHJlYWRpbmcKdGhlIFBMTCBjb25m
aWd1cmF0aW9uIGluZGl2aWR1YWxseSwgYnV0IHRoZSBwYXRjaCBhY3R1YWxseSBtb2RpZmllcwps
eW54XzI4Z19wbGxfcmVhZF9jb25maWd1cmF0aW9uLgoKQ291bGQgdGhlIGNvbW1pdCBtZXNzYWdl
IGJlIHVwZGF0ZWQgdG8gcmVmbGVjdCB0aGUgY29ycmVjdCBmdW5jdGlvbiBuYW1lPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUy
ODE3MjQwNC43MzMxOTYtMS12bGFkaW1pci5vbHRlYW5AbnhwLmNvbT9wYXJ0PTgKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
