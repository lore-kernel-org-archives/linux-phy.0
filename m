Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B78606A33B
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 08:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TxO9aPAW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=B19xrHOs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=v7dUyI6o09cr6mBszN6Xlk18iNRDjwcTn64OoDSfUdQ=; b=TxO9aPAWeqSNbvxWfABfKSS51i
	LT0MT3++SHuPtYg3kEMsSf+2XbVXBuFH8OU37gbP955Tw0Ji8INPKwJVEvbax+/yxY0FZzvb3rweI
	4LLPiPvs83UTVwtNpYMlqtgWPmCqjF9yIpj87Ymsg3pqQFQUxHLQH3oE8TosVlSMIguOzaIGYWmO7
	t5UprqWeVmrLszRU849WMbY13yRLCuOChMuXsUfU+k7qVOiSONJx/sTwB0YY3+WqyN8cVYmdes4Gt
	B/v7Iw5t1OH8IZX2+9mn/5uIlj3ZvDXHawY0+5vzAmPdegLsmdXj3dvMYh0SFHPjg24L22OcmrCl9
	pSe4X+3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmw8-0000000C8RR-0rat;
	Fri, 13 Nov 2026 08:47:10 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmw4-0000000C8QL-398N
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 08:47:06 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c4395d31228so129352766b.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 00:47:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794559623; cv=none;
        d=google.com; s=arc-20260327;
        b=JDphM1e6uHEQPaadkRcyB/OBta4cE0dULroo61otOmcapM+RoRLEAa58ltN17TzEzN
         Bj2ZZhRru8OBdtuq2lLoUFtvzoqz3ZPAWGb0d03aGr7XUTISKjVaeDPLffWPT9I/GNW0
         rcHXzuZTaHO6q3I3bu8ezFJmSDM/fwW6CCxwLnXKRnwpqkP8wB8SySFUDbdwn0+ta/Ob
         YSDGLRiUxDv+1JO4/ATo+mz/HnTsrrhB5sjG9hgvvmF5azkfPyGqFjBIRn+v5qz3BaoH
         TrTb9bpaL4FpHxfYNHN9l4ab5fkCNEiYCrfbopSAurUCyG+5TSCuZVwLBxr18x899hwD
         yM9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        fh=uagyWOc7NG/IB0PcaZkfl/InbN4MGDNLN+PZEv8b4zw=;
        b=EvIzgf6T860eYtPX54fDdwlnxGohIc5HQV8ujw1YmvzbGtUSDtNyBO7l3Dw+dy6v1C
         9vXASOFw9SRL0qOMpioCi7+9UdcWXJJCwM2KK4DCS2eC01N4pom8lPf3o/BQoN+CsK6q
         2SjcY40AI7DXR4dG/Q+hHypshxA15cWtrQhEl/tC6kw+FegZRnRu4JqNFura+XfPpBmD
         DQ/yoPCjdvgXRfXhysIlCjNQy4iWR18XOLNSRnvzbGaZGyfnYJ9gNDvRVwkX5wpL76KC
         IvTqin47lz7Kaf+zXMeek/UjPm3qEp5CI5A9dC0eLBc607TRy0KSl0Txd3QvClznzqu2
         ODNA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794559623; x=1795164423; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        b=B19xrHOsOpVGLYgGw8eRD69Vun022bAlRK+k5ysxrwgzdyyEQ7rcWEgDBBwYn0dn4p
         nnP6/eGzkntmdAfhftAxPdsBtemOwT3AWkRejiimT7MUfB/gHTClXz3M2wTrsrISHUG/
         dW90Zawbxb1JSx7S5XbolBouZMqGafuT9q1kEObf2F6CpBAl6sUsfGUtn26uLrQCny19
         FbGPskHilP+a5c/eXevfypA8P4hmKvyPT5HIeu4ufTWDwxtIwopiU0bin6662zhZtWW5
         N68yajPZRp0CVVGqrLLUqWca0ersDNrPOieWXvr8Rf/Ns79L3o+WRKMqDS+2jucE26LF
         kuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794559623; x=1795164423;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        b=CqJCXEuKGXZROj4iyPLlbbVcUzLa3cDCWdOFzqXplcjWjirWfdvVul6r3jTtrjq/49
         Wn7JmIP8agpDWCXRLumrq4utVVc/XbeDd5CFBFWZ+96hJ0+UCkAeuBsLhca2Kgd277vU
         eVBJ54qfkOaKJ8Kev4LLtyzcWtYu2ClDpIko6H582yLNUb/8FcTID4TqJtV0VqAbTTy4
         htDr33P4oaZMCt5YthQAACwYQCcoVfdxeFmddn9Opp5b4roIAKg0Yc6ToIj6/DNStKFh
         4xO0ycQPY6SOy3+ZSEcFZs8VUmO2qcw065kaOGhH0AeB8/OgUukF01VkBI++OfZy1oHD
         NMrQ==
X-Forwarded-Encrypted: i=1; AL+hErEWwN4dqtC/SSnnyJOyqCTwojVmbvqHeGqisGsdbIfiaVifkNndBlwPIflZGNuaqiqGHcID7SaCQ84=@lists.infradead.org
X-Gm-Message-State: APuU4Z8/V5kmb/uxgZnTzVWVPPnfsMRGwQq3n6PAoSEZXG34bqmbYxrN
	y5GwMDOzaoJh5x4qRUP8jBOlwMF0D+1xEWIoEIHvmiSx0sjjxRjA6/lKDgsttl8YBStWyZ4DRWp
	u9PcpPkuBcUjWiMldugzp7KoPOTeSJ4O8I9Abit+6Lg==
X-Gm-Gg: AYBFou0zqV0afDVwh7ovlo7CEo2RZmM+F41sjAQ5CiICjRCXL/R8xdrXupSn4jsC+ih
	mjFCBCFHLOwlYq1+unPNmk0HPct2ZYfdCYiGJ+ckWHrQXhT3ysN9wZeaZjCRacSN3+8kZYiEEjn
	s8NlBtbM/rdXJiTGqPd9QiSfzMVAZaH7oPCoq3Isexpk8R4vvaZwFtbwbZBFJpJTwNIqyrKztLC
	VFpK5pD0o7JoTQZqF977mTJf6mHWGIeSjIIqBQ3hK/Dth77D8ZbzA4R0ixXKxlGg1II1vylBc4K
	LuXCUKDf5Eatk6J08Geu1BmdDigxTaRc6kC4NY1d8nWnWOrYQiS8ZVsSSPit7FAAytuz1/BCOA8
	FLfrwM6aPD80ngB+rja8rkdAx7pa3yC2SP77ZFl0cAjD48ZlFJFkkVCS7pJCcffYmFVks
X-Received: by 2002:a17:907:3e13:b0:c2e:3ed7:7db4 with SMTP id
 a640c23a62f3a-c5096340feamr135396666b.23.1794559622820; Fri, 13 Nov 2026
 00:47:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com> <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 13 Nov 2026 12:46:51 +0400
X-Gm-Features: AclHuK-fnCfqep89v60X_1kiVQLyjf-ZvvNw6LylrxXymHR-bVpgT9BeqYnaapI
Message-ID: <CAKTNdwFfQyMGJQnFU5cwQyOsXvEx4NowOT6n-jPkM4b0zGX50w@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: rockchip-snps-pcie3: Check more sram init status
 for RK3588
To: Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_004704_869683_639358C5 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgU2hhd24sCgpPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAxMToxMOKAr0FNIFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEFsbCB0aGUgbG93ZXIgNCBiaXRz
IHNob3VsZCBiZSBjaGVja2VkIHdoaWNoIHNob3dzIHRoZSBtcGxseF9zdGF0ZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+Cj4g
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4gaW5kZXggZjVh
NWQwYWYuLjZjYzM4ZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXNucHMtcGNpZTMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1zbnBzLXBjaWUzLmMKPiBAQCAtNDMsNyArNDMsNyBAQAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMF9MTjFfQ09OMSAgICAgIDB4MTEwNAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMV9MTjBfQ09OMSAgICAgIDB4MjAwNAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMV9MTjFfQ09OMSAgICAgIDB4MjEwNAo+IC0jZGVmaW5lIFJLMzU4OF9T
UkFNX0lOSVRfRE9ORShyZWcpICAgICAgICAgICAgIChyZWcgJiBCSVQoMCkpCj4gKyNkZWZpbmUg
UkszNTg4X1NSQU1fSU5JVF9ET05FKHJlZykgICAgICAgICAgICAgICgocmVnICYgMHhmKSA9PSAw
eGYpCgpUaGlzIGJyZWFrcyBQQ0llM3g0IG9uIG15IFJhZHhhIFJPQ0sgNUIsIHdoaWNoIHRoZW4g
Y2Fubm90IGZpbmQgaXRzCk5WTWUgcm9vdCBmaWxlc3lzdGVtLiBTZWJhc3RpYW4ncyByb2NrY2hp
cC1kZXZlbCBicmFuY2ggY2FycmllcyB0aGlzCnNlcmllcywgYW5kIGtlcm5lbHMgYnVpbHQgZnJv
bSBpdCBmYWlsIHdpdGg6CgogIHBoeSBwaHktZmVlODAwMDAucGh5LjEzOiBsb2NrIGZhaWxlZCAw
eDcsIGNoZWNrIGlucHV0IHJlZmNsayBhbmQgcG93ZXIgc3VwcGx5CiAgcm9ja2NoaXAtZHctcGNp
ZSBhNDAwMDAwMDAucGNpZTogcGh5IGxvY2sgZmFpbGVkCiAgcm9ja2NoaXAtZHctcGNpZSBhNDAw
MDAwMDAucGNpZTogcHJvYmUgd2l0aCBkcml2ZXIgcm9ja2NoaXAtZHctcGNpZQpmYWlsZWQgd2l0
aCBlcnJvciAtMTEwCgpUaGUgUkszNTg4IFRSTSAoVjEuMCwgUGFydCAxKSBkZXNjcmliZXMgUENJ
ZTNQSFlfR1JGX1BIWXswLDF9X1NUQVRVUzEKYXMgZm9sbG93czoKCiAgYml0IDAgICAgIHNyYW1f
aW5pdF9kb25lCiAgYml0IDEgICAgIHBjc19wd3JfZW4gICAgIChyZXNldCB2YWx1ZSAxKQogIGJp
dCAyICAgICBwbWFfcHdyX2VuICAgICAocmVzZXQgdmFsdWUgMSkKICBiaXQgMyAgICAgbXBsbGFf
c3RhdGUKICBiaXRzIDU6NCAgcmVzZXJ2ZWQKICBiaXQgNiAgICAgbXBsbGJfc3RhdGUKClNvIHRo
ZSBsb3dlciBmb3VyIGJpdHMgYXJlIG5vdCBhbGwgUExMIHN0YXRlczogYml0cyAxIGFuZCAyIGFy
ZSBwb3dlcgpzd2l0Y2ggZW5hYmxlcywgYW5kIHRoZSBvbmx5IFBMTCBhbW9uZyB0aGVtIGlzIE1Q
TExBLCB3aGlsZSBNUExMQiBpcwpiaXQgNi4KCk9uIHRoaXMgYm9hcmQgTVBMTEEgaXMgb2ZmIGV2
ZW4gb24gYSB3b3JraW5nIGxpbmsuIFdpdGggdGhpcyBwYXRjaApyZXZlcnRlZCwgUEhZMF9TVEFU
VVMxIGFuZCBQSFkxX1NUQVRVUzEgYm90aCByZWFkIDB4NDcgb25jZSB0aGUgbGluawpoYXMgdHJh
aW5lZCBhdCA4IEdUL3MgeDQ6IFNSQU0gaW5pdGlhbGlzZWQsIE1QTExCIHJ1bm5pbmcsIE1QTExB
IG9mZi4KV2hlbiB0aGUgY2hlY2sgZmFpbHMgdGhleSByZWFkIDB4Nywgc28gbmVpdGhlciBQTEwg
aXMgcnVubmluZyB5ZXQgYXQKdGhhdCBwb2ludCwgYW5kIGNoZWNraW5nIGZvciBNUExMQiBpbnN0
ZWFkIHdvdWxkIGZhaWwgdG9vLgoKUmV2ZXJ0aW5nIG9ubHkgdGhpcyBwYXRjaCwgd2l0aCB0aGUg
cmVzdCBvZiB0aGUgc2VyaWVzIGFwcGxpZWQKKHJvY2tjaGlwLWRldmVsIGF0IGQ3NDM2MzQ2ZmMz
MSwgdjcuNC1yYzIpLCBicmluZ3MgUENJZTN4NCBhbmQgdGhlCk5WTWUgYmFjay4KCldoYXQgaXMg
dGhlIGNoZWNrIG1lYW50IHRvIGNhdGNoPyBJZiBpdCBpcyBQTEwgbG9jaywgd2hpY2ggYml0cywg
YW5kCmF0IHdoYXQgcG9pbnQsIHdvdWxkIGJlIHJpZ2h0IGZvciBhIGxpbmsgdGhhdCBydW5zIG9u
IE1QTExCPwpPdGhlcndpc2UsIHNyYW1faW5pdF9kb25lIChiaXQgMCkgYWxvbmUgbG9va3MgbGlr
ZSB0aGUgcmlnaHQgY29uZGl0aW9uCmhlcmUuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
