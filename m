Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81222C3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 07:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZgJslbJOsghYOx9x5ddaPaArxMBGg2fYCP7/dlNFfk=; b=yZUbBVTucwzIb/
	V19L/twKO3nR8DZPFoWyqkITxWtYPKkV3mPZN8q5yl81zLiO7toPYs4+KC6M6aNpfcG3gpJ2uCcHN
	xYJLn4K0pdpFm+Tb7SqR1D1sVhwleOjtlAABGPSnIAROSlkVa5JbJXk/rXL69sBKd2Ye/GL4LHZVF
	f9un32yYEDFlKcUWv5M3tpviv8dEEWnLKN+poy1KsBuQ+EM+Nb8uyhdcbNBaStGIxLDBuOzWEOG0N
	I1M+lP+bqDC2/fCJ1sYOH5pX0JURM06Sn6479qNnvjedPBV6Y3fW5cQLAQ+QvgXrPu7GhtFsvjieY
	wCvrjKvMEsDAII6HrRxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOYBE-00000005thg-0feG;
	Tue, 02 Jul 2024 07:44:00 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOYBB-00000005thG-1JKt
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 07:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1719906221; x=1720511021; i=markus.elfring@web.de;
	bh=ZeB0+Ec+5YJTZMxHaSrgvr/vw2xhzk6rdzPpdj+oVNk=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:From:Subject:To:
	 Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PnJOadbxr4esfuE6745tixukJpKsRRQkJ18tzFwU9pVK4ZSbEZK5m5eW+E4oarJN
	 O+GutjpwaRY4to+eeAaAxEKpJp/4ha7/ChFO4gxn8tbVZwAVRiEGGN4TeXsCL9fCu
	 7Bkz7W1MVJnbFLkSZTFuBXXxX1rs8t78pyYvNI0CAsL2rmLCIQfAvW8cviyAsvrEz
	 6Cw8MIJRRVwL0T/go3KtTCqhHGQ5NBhGu3CYypDsEkD7LZOn+Dn4aMM6H1ZEk96st
	 5ieQ+JFA4HTupP4co5mg7gNkjEjxxnm4IAdII0pYOoAzELo/jLZl0YJKhYYTEDgBI
	 sQpU/hpWC3MS7JbR4Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.82.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MTvrs-1soQmN225q-00P0wZ; Tue, 02
 Jul 2024 09:43:41 +0200
Message-ID: <def496b0-ea98-467c-be47-77d965bb3a88@web.de>
Date: Tue, 2 Jul 2024 09:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] phy: cadence-torrent: Check return value on register read
To: Ma Ke <make24@iscas.ac.cn>, linux-phy@lists.infradead.org,
 kernel-janitors@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Swapnil Jakhade <sjakhade@cadence.com>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240702032042.3993031-1-make24@iscas.ac.cn>
Content-Language: en-GB
In-Reply-To: <20240702032042.3993031-1-make24@iscas.ac.cn>
X-Provags-ID: V03:K1:TmT02C0EJt0645VtrOXQUopS0Jq8aD9KBO2DE1l6rE2kT6u5q3A
 PYlpyU5J45O9aKHQ1qo/FWWrE7yJezI3J10KlULC+z0rBZly+bVhHNxktTPLmmkztjNUo3Z
 +BNmdX0sCOV6RIg9NmkaAfILn3IC/4cDfrDtnFcJ0m1W6VMGbyhBYH7WyVzhbWabDnKUseo
 yKI3FxFNEgS04N5D3A41A==
UI-OutboundReport: notjunk:1;M01:P0:pvNj5+zGnmQ=;bX8Il3e8Qp5ktsIFAeklq16Olka
 szIIGu2zpvxwwxxAFxb0YleBppFB2Pdcl3iy6gXNiQOdj/ANJ2OiGJVzGC8I7+UmSASWPhTIW
 cWD42OsCgfRNDFl7elDZ/ApYQCeU1/nXwhJiHq7wdkeTjvGd5rMJ/V1TIhuh1aapbM1GB+90O
 oYdAWVf6Y7lVTrPkyIU/f+qkkVKVsTR6dNkmhm+J968beMelgGnNWCk9NlXhuydh3va37+Krr
 VkdDMgYr1YVMN1HwEu5oNGFJ4SjkY5YoadVob7fN5pVpolL8t8ninmr67UGa3A2osuZELD2qb
 91lMi/1G5xt1cHh1BDOfwKGKLnvPctd/av6sgZwzDVO9jQrqZtqbLE7sJYGeB/QN8mKBdUG4u
 chZvKZNRTISyffjxf6eHk9gGkaMUzXih/Qi2OlRsDjJxN7cyc9QecgRodtc7y4fsnMrNLrw4f
 0FT6G7u6t/vDxAMpyud0nWUVXO1UXm3niWx2LGSd2XAB3k7TrGW/lr7vUUhoxd+MHBlXb/z6d
 JBk+jBLGBZx2Pc+gpHHuwZ4B/lH6NJgr3U0NY1RWAhsHdWGUMOIUn+ljlPZtns9c7290UzxIZ
 xofsEeCiBmPEiyUK9rZbOGlbPCbKbCU9TlYehALvXXARJ6zpZr/X62yonTohQ/ncoIqwQu2Lk
 uFx7TvFVGU3DZL8UQ42w1qWhvk1pjV3nhkHNyefeNMtqOFvB9l7kVm2DuA23tsTxlT3E7QrjE
 fpsi8eGLkUvaH+UKlk4gE4xlbH1kJvLa++wfWJvvR1NkeuLkXzuwN3CyehJ2hZg5W1LFlxjkl
 +x8MjNnAlGCvEeVHdzSRYqOEyNAz/bOBakEdayIF7MGHQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_004357_744564_70D02D9F 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

PiBjZG5zX3RvcnJlbnRfZHBfc2V0X3Bvd2VyX3N0YXRlKCkgZG9lcyBub3QgY29uc2lkZXIgdGhh
dCByZXQgbWlnaHQgYmUKPiBvdmVyd3JpdHRlbi4gQWRkIHJldHVybiB2YWx1ZSBjaGVjayBvZiBy
ZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQoKSBhZnRlcgo+IHJlZ2lzdGVyIHJlYWQgaW4gY2Ruc190
b3JyZW50X2RwX3NldF9wb3dlcl9zdGF0ZSgpLgoKSSBzdWdnZXN0IHRvIGltcHJvdmUgc3VjaCBh
IGNoYW5nZSBkZXNjcmlwdGlvbiBhbm90aGVyIGJpdC4KCjEuIEEgcmV0dXJuIHZhbHVlIGlzIHN0
b3JlZCBpbiB0aGUgbWVudGlvbmVkIGxvY2FsIHZhcmlhYmxlLgoKMi4gVW5mb3J0dW5hdGVseSwg
aXQgd2FzIG5vdCBpbW1lZGlhdGVseSBjaGVja2VkLgoKICAgKiBodHRwczovL2N3ZS5taXRyZS5v
cmcvZGF0YS9kZWZpbml0aW9ucy8yNTIuaHRtbAoKICAgKiBodHRwczovL3dpa2kuc2VpLmNtdS5l
ZHUvY29uZmx1ZW5jZS9kaXNwbGF5L2MvRVhQMTItQy4rRG8rbm90K2lnbm9yZSt2YWx1ZXMrcmV0
dXJuZWQrYnkrZnVuY3Rpb25zCgozLiBIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGF2b2lkIGEg
cmVwZWF0ZWQgcmVmZXJlbmNlIHRvIGEgZnVuY3Rpb24gbmFtZT8KCgrigKYKPiBTaWduZWQtb2Zm
LWJ5OiBNYSBLZSA8bWFrZTI0QGlzY2FzLmFjLmNuPgoKKiBXaHkgd2FzIHRoZSBwZXJzb25hbCBu
YW1lIOKAnEhhb3hpYW5nIExp4oCdIG5vdCBzcGVjaWZpZWQgaGVyZT8KCiogVW5kZXIgd2hpY2gg
Y2lyY3Vtc3RhbmNlcyB3aWxsIGFwcGxpY2F0aW9ucyBvZiB0aGUgRGV2ZWxvcGVyJ3MgQ2VydGlm
aWNhdGUgb2YgT3JpZ2luCiAgYmUgY2xhcmlmaWVkIGJldHRlcj8KICBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9E
b2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdD9oPXY2LjEwLXJjNiNu
Mzk4CgoKSG93IGRvIHlvdSB0aGluayBhYm91dCB0byB1c2UgYSBzdW1tYXJ5IHBocmFzZSBsaWtl
IOKAnENvbXBsZXRlIGVycm9yIGhhbmRsaW5nCmluIGNkbnNfdG9ycmVudF9kcF9zZXRfcG93ZXJf
c3RhdGUoKeKAnT8KClJlZ2FyZHMsCk1hcmt1cwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
