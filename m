Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB437E64016
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXQOkCsj11/OlQ0+lZ+8rd2Jr/RGLxGokuklGKTS8+8=; b=nnGof0ar+z6fAO
	92nsRwPUiPNBRxRng7ClOvo8+S/OZqm1zRIo4jB3LghHf+eR3e877follDspsNnJvXdNHKNejWSfZ
	mr+iY19nZIdAFpcf4fHFgKcIq8eICKqEaKdENXodEg/sO/5qW74x3YjltJ9BquWy48QHfm4+8DPk8
	KMD5W6T3IF/WSkwMU1JHwfCwve0tnXYU0AQhcsxBE0evIGwfAt6GizmfZCd6cXQg99dmIu2NdbTat
	kr1KBfNk8YO6u1tO9vKX0KLG4rpNYQQeCtKxnUwGiZBrM4NjptGcGEX0xv3UJSyfYrKQy6zO0/V4/
	2Vmt2JFi3wh3dcrVlMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9k9g-000000059le-0enp;
	Mon, 06 Apr 2026 13:38:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9k9e-000000059l1-19ag;
	Mon, 06 Apr 2026 13:38:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6155B60123;
	Mon,  6 Apr 2026 13:38:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3371EC4CEF7;
	Mon,  6 Apr 2026 13:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775482693;
	bh=9f1+IanKVd/XJVNM+JocRgqDSvnCXUbrGgLpydGoeKs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bDK5t7YTuBMAo9PQTMhzXtsxuuA7TIHYdXteEB7LQ7i4H9uIz4uR3C1MFG+sg4dgF
	 ihwQHNJJJMdWkQ5t008x/jk/KULPIti5KEfUjgamnxOtivSFLcda5bhM1MD66RuA7B
	 nHqCcqung8SEGJJghWxkwrwaAVPeBKVy+i9tgK3D5hHGC/WFLtWAAjkueaQ6FUpefC
	 8oibaimxaauepHVv/mK/hm17WrpB2NBvv23ZKKa3i4/JVKnfGyh9sAkSb3TYAIn1bY
	 wOCsgGU8dsYPRNuZo1uqua80XOu3cOL5Yu2p0LJn4xf6e+ny9vgjSRj5N61BwIh+Lp
	 1/E1glJwDXZkQ==
Message-ID: <e4090ddb-a237-4d55-b916-ea9ca32d6d98@kernel.org>
Date: Mon, 6 Apr 2026 15:38:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix USB 2.0 HS PHY tuning values for
 Exynos7870
To: =?UTF-8?B?xYF1a2FzeiBMZWJpZWR6acWEc2tp?= <kernel@lvkasz.us>,
 vkoul@kernel.org
Cc: neil.armstrong@linaro.org, alim.akhtar@samsung.com,
 andre.draszik@linaro.org, pritam.sutar@samsung.com, kauschluss@disroot.org,
 johan@kernel.org, ivo.ivanov.ivanov1@gmail.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20260406070548.132491-1-kernel@lvkasz.us>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJoF1BKBQkWlnSaAAoJEBuTQ307
 QWKbHukP/3t4tRp/bvDnxJfmNdNVn0gv9ep3L39IntPalBFwRKytqeQkzAju0whYWg+R/rwp
 +r2I1Fzwt7+PTjsnMFlh1AZxGDmP5MFkzVsMnfX1lGiXhYSOMP97XL6R1QSXxaWOpGNCDaUl
 ajorB0lJDcC0q3xAdwzRConxYVhlgmTrRiD8oLlSCD5baEAt5Zw17UTNDnDGmZQKR0fqLpWy
 786Lm5OScb7DjEgcA2PRm17st4UQ1kF0rQHokVaotxRM74PPDB8bCsunlghJl1DRK9s1aSuN
 hL1Pv9VD8b4dFNvCo7b4hfAANPU67W40AaaGZ3UAfmw+1MYyo4QuAZGKzaP2ukbdCD/DYnqi
 tJy88XqWtyb4UQWKNoQqGKzlYXdKsldYqrLHGoMvj1UN9XcRtXHST/IaLn72o7j7/h/Ac5EL
 8lSUVIG4TYn59NyxxAXa07Wi6zjVL1U11fTnFmE29ALYQEXKBI3KUO1A3p4sQWzU7uRmbuxn
 naUmm8RbpMcOfa9JjlXCLmQ5IP7Rr5tYZUCkZz08LIfF8UMXwH7OOEX87Y++EkAB+pzKZNNd
 hwoXulTAgjSy+OiaLtuCys9VdXLZ3Zy314azaCU3BoWgaMV0eAW/+gprWMXQM1lrlzvwlD/k
 whyy9wGf0AEPpLssLVt9VVxNjo6BIkt6d1pMg6mHsUEVzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmgXUF8FCRaWWyoACgkQG5NDfTtBYptO0w//dlXJs5/42hAXKsk+PDg3wyEFb4NpyA1v
 qmx7SfAzk9Hf6lWwU1O6AbqNMbh6PjEwadKUk1m04S7EjdQLsj/MBSgoQtCT3MDmWUUtHZd5
 RYIPnPq3WVB47GtuO6/u375tsxhtf7vt95QSYJwCB+ZUgo4T+FV4hquZ4AsRkbgavtIzQisg
 Dgv76tnEv3YHV8Jn9mi/Bu0FURF+5kpdMfgo1sq6RXNQ//TVf8yFgRtTUdXxW/qHjlYURrm2
 H4kutobVEIxiyu6m05q3e9eZB/TaMMNVORx+1kM3j7f0rwtEYUFzY1ygQfpcMDPl7pRYoJjB
 dSsm0ZuzDaCwaxg2t8hqQJBzJCezTOIkjHUsWAK+tEbU4Z4SnNpCyM3fBqsgYdJxjyC/tWVT
 AQ18NRLtPw7tK1rdcwCl0GFQHwSwk5pDpz1NH40e6lU+NcXSeiqkDDRkHlftKPV/dV+lQXiu
 jWt87ecuHlpL3uuQ0ZZNWqHgZoQLXoqC2ZV5KrtKWb/jyiFX/sxSrodALf0zf+tfHv0FZWT2
 zHjUqd0t4njD/UOsuIMOQn4Ig0SdivYPfZukb5cdasKJukG1NOpbW7yRNivaCnfZz6dTawXw
 XRIV/KDsHQiyVxKvN73bThKhONkcX2LWuD928tAR6XMM2G5ovxLe09vuOzzfTWQDsm++9UKF a/A=
In-Reply-To: <20260406070548.132491-1-kernel@lvkasz.us>
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

T24gMDYvMDQvMjAyNiAwOTowNSwgxYF1a2FzeiBMZWJpZWR6acWEc2tpIHdyb3RlOgo+IFRoZSBl
eGlzdGluZyBQSFlQQVJBTTAgdHVuaW5nIHZhbHVlcyBmb3IgRXh5bm9zNzg3MCBhcmUgaW5jb3Jy
ZWN0LAo+IGNhdXNpbmcgdGhlIFVTQiAyLjAgUEhZIHRvIGZhaWwgaGlnaC1zcGVlZCBuZWdvdGlh
dGlvbiBhbmQgZmFsbCBiYWNrCj4gdG8gZnVsbC1zcGVlZCAoMTJNYnBzKSBvcGVyYXRpb24uCj4g
Cj4gRml4IFRYVlJFRlRVTkUgKHRyYW5zbWl0dGVyIHZvbHRhZ2UgcmVmZXJlbmNlKSBmcm9tIDE0
IHRvIDMsCj4gVFhSRVNUVU5FICh0cmFuc21pdHRlciBpbXBlZGFuY2UpIGZyb20gMyB0byAyLCBh
bmQgU1FSWFRVTkUKPiAoc3F1ZWxjaCB0aHJlc2hvbGQpIGZyb20gNiB0byA1LiBBbHNvIGV4cGxp
Y2l0bHkgc2V0Cj4gVFhQUkVFTVBQVUxTRVRVTkUgdG8gMCwgd2hpY2ggd2FzIHByZXZpb3VzbHkg
bWlzc2luZyBmcm9tIHRoZQo+IHR1bmluZyB0YWJsZSBkZXNwaXRlIGJlaW5nIGluY2x1ZGVkIGlu
IHRoZSByZWdpc3RlciBtYXNrLgo+IAo+IEFsbCB2YWx1ZXMgYXJlIGRlcml2ZWQgZnJvbSB0aGUg
dmVuZG9yIGtlcm5lbCBmb3IgdGhlIFNhbXN1bmcKPiBHYWxheHkgQTYgKFNNLUE2MDBGTiksIGFz
IG5vIHB1YmxpYyBoYXJkd2FyZSBkb2N1bWVudGF0aW9uIGlzCj4gYXZhaWxhYmxlIGZvciB0aGUg
RXh5bm9zNzg3MCBVU0IgRFJEIFBIWS4gV2l0aCB0aGVzZSBjb3JyZWN0aW9ucywKPiB0aGUgUEhZ
IHN1Y2Nlc3NmdWxseSBuZWdvdGlhdGVzIGhpZ2gtc3BlZWQgKDQ4ME1icHMpIG9wZXJhdGlvbi4K
PiAKPiBGaXhlczogNTg4ZDVkMjBjYThkICgicGh5OiBleHlub3M1LXVzYmRyZDogYWRkIGV4eW5v
czc4NzAgVVNCRFJEIHN1cHBvcnQiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gVGVz
dGVkLWJ5OiDFgXVrYXN6IExlYmllZHppxYRza2kgPGtlcm5lbEBsdmthc3oudXM+CgpEcm9wIHlv
dSBhcmUgdGhlIGF1dGhvci4gVGhpcyBpcyBmb3IgM3JkIHBhcnR5IGNyZWRpdHMuCgo+IFRlc3Rl
ZC1ieTogS2F1c3RhYmggQ2hha3JhYm9ydHkgPGthdXNjaGx1c3NAZGlzcm9vdC5vcmc+Cj4gU2ln
bmVkLW9mZi1ieTogxYF1a2FzeiBMZWJpZWR6acWEc2tpIDxrZXJuZWxAbHZrYXN6LnVzPgo+IC0t
LQo+ICBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgNyArKysrLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gaW5kZXggNWExODFjYjQ1
OTdlLi44NzExYTNiNjJjOGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHkt
ZXh5bm9zNS11c2JkcmQuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUt
dXNiZHJkLmMKPiBAQCAtMTk1OCwxMyArMTk1OCwxNCBAQCBjb25zdCBzdHJ1Y3QgZXh5bm9zNV91
c2JkcmRfcGh5X3R1bmluZyBleHlub3M3ODcwX3R1bmVzX3V0bWlfcG9zdGluaXRbXSA9IHsKPiAg
CQkJICAgICAgUEhZUEFSQU0wX1RYUFJFRU1QQU1QVFVORSB8IFBIWVBBUkFNMF9UWEhTWFZUVU5F
IHwKPiAgCQkJICAgICAgUEhZUEFSQU0wX1RYRlNMU1RVTkUgfCBQSFlQQVJBTTBfU1FSWFRVTkUg
fAo+ICAJCQkgICAgICBQSFlQQVJBTTBfT1RHVFVORSB8IFBIWVBBUkFNMF9DT01QRElTVFVORSks
Cj4gLQkJCSAgICAgKEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYVlJFRlRVTkUsIDE0KSB8
Cj4gKwkJCSAgICAgKEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYVlJFRlRVTkUsIDMpIHwK
PiAgCQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhSSVNFVFVORSwgMSkgfAo+
IC0JCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWFJFU1RVTkUsIDMpIHwKPiAr
CQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhSRVNUVU5FLCAyKSB8Cj4gKwkJ
CSAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUFJFRU1QUFVMU0VUVU5FLCAwKSB8
Cj4gIAkJCSAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUFJFRU1QQU1QVFVORSwg
MCkgfAo+ICAJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWEhTWFZUVU5FLCAw
KSB8Cj4gIAkJCSAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYRlNMU1RVTkUsIDMp
IHwKPiAtCQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfU1FSWFRVTkUsIDYpIHwK
PiArCQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfU1FSWFRVTkUsIDUpIHwKPiAg
CQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfT1RHVFVORSwgMikgfAo+ICAJCQkg
ICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9DT01QRElTVFVORSwgMykpKSwKCldpdGgg
dGFncyBjb3JyZWN0ZWQ6CgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6
dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
