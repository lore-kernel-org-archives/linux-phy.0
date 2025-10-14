Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98E5ACCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 04:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgsZpIWJ/tGOT31H/6cSm403HNQrGPW67mTXGwC4qls=; b=FKB5eHXD7jpdS6
	OydsfRdFv8ZACBphyNRhuz7nqK5mNwslsQGfsBBQXbETwns8k/2rBZyoICcjTnDdLCFJTKNBNVRkT
	qHL421U8JVQze1BcmqKAAZJThgKsDR2J0PNGeas9I6YWbOXIzts5ZbmST5tHTRAm2NkHXrrAwXVSu
	iM5Q594Gi0O6X06hy6oW05mzSRzNl2GV0OcrghF9FZ7hYJumtinowoL+BuphJt2+NJXdH1cpXgUZ9
	voQAQM97/zr34+rDKmEMHmPNSsFPxLQmSkLWromRCaOZLD+75TxYgodJjV1N4ssYjdQpl76TlzcIs
	w9t8igkD5PZ6YYCr9ZJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Wm5-0000000F7Sj-0npt;
	Tue, 14 Oct 2025 04:36:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Wm3-0000000F7SS-2zBm
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 04:36:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DE0A5602C6;
	Tue, 14 Oct 2025 04:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDF46C4CEE7;
	Tue, 14 Oct 2025 04:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760416594;
	bh=aW/NTHsOt/IPR1PHHfFumqBVIbTK5xUuGQk3VXrjcSg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vAg+7F//rLkVVaJ+vozD+8rX7iUvMTprQK6ps0lIuf6cx2UXxnlqDUdXo5GeYMNUP
	 GOkagGdcE8nZSl9nEGYEv1KpSkKB2S6F9R3WevNv03T3lHc6LBw6s7RUMX3rYmXY4u
	 kz/sva7sydefaZp5rfTgw9Z264fYqYyhTuh0x3Og5rua4HVubLtnGBiyS+7hgioYMw
	 3dc06ORzx7dcGxzP4qY2oahUD2ayjbRTKA+xPuoFP2pIPWb8SGzxvcA6s2ISQWyb4E
	 EtS/ISSZBUE6nTCaWr52mPgM74wpmQw3Z7kbMFdKm1kQ1yq/sf7kZPzrGBHpP/xApM
	 4MEKqS8Xo4ZUQ==
Message-ID: <99ab26d3-eb44-401d-8a7c-1d9efd2a1a10@kernel.org>
Date: Tue, 14 Oct 2025 06:36:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
 conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
 dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
 gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
 <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
 <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
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
In-Reply-To: <2a70f878-269c-1b40-2e8c-77b5851de9a1@oss.qualcomm.com>
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

T24gMTQvMTAvMjAyNSAwMzoxNiwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4KPj4+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqAgbWF4SXRlbXM6IDUKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1u
YW1lczoKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBhdXgKPj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gY29uc3Q6IGNsa3JlZgo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDog
cmVmCj4+Pj4+Cj4+Pj4+IFdoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGVzZSB0d28/
IFdoaWNoIGJsb2NrIElOUFVUcwo+Pj4+PiAoaW1wb3J0YW50ISkgdGhleSByZXByZXNlbnQ/Cj4+
Pj4+Cj4+Pj4KPj4+PiBjbGtyZWYgaXMgdGhlIFRDU1IgcmVmZXJlbmNlIGNsb2NrIHN3aXRjaCwg
YW5kIHRoZSByZWYgaXMgdGhlIGFjdHVhbCBDWE8KPj4+PiBoYW5kbGUuCj4+Cj4+Cj4+IFRoZW4g
dGhpcyBzaG91bGQgYmUgbmFtZWQgc29tZWhvdyBkaWZmZXJlbnRseS4gQ1hPIGlzIGNsb2NrLiBS
ZWZlcmVuY2UKPj4gY2xvY2sgaXMgY2xvY2suLi4gVG8gbWUgaXQgZmVlbHMgbGlrZSB5b3UgYXJl
IGRlc2NyaWJpbmcgdGhlIHNhbWUgY2xvY2ssCj4+IGp1c3QgbWlzc2luZyBzb21lIGdhdGUgaW4g
VENTUi4gQnV0IGluIGNhc2UgdGhlc2UgYXJlIG5vdCB0aGUgc2FtZQo+PiBjbG9ja3MsIHlvdSBu
ZWVkIHRvIG5hbWUgaXQgYWNjdXJhdGVseS4KPj4KPiAKPiBUZWNobmljYWxseSBpdHMgYWxsIGhh
bmRsaW5nIHRoZSBzYW1lIGNsb2NrIGJyYW5jaCAoQ1hPKSwgd2UgaGF2ZSB0aGUgCj4gVENTUiBj
bGtyZWYgcmVnaXN0ZXIgdGhhdCBhbGxvd3MgdXMgdG8gZ2F0ZSB0aGUgQ1hPIHRvIHRoZSBVU0Ig
UEhZLCBhcyAKCgpBaCwgZXhhY3RseS4gVGhlbiBjbGtyZWYgaXMgbm90IGEgY2xvY2suIFlvdSBu
ZWVkIHJhdGhlciBwcm9wZXIgY2xvY2sKaGllcmFyY2h5LgoKPiBDWE8gaXMgc2hhcmVkIGFjcm9z
cyBzZXZlcmFsIEhXIGJsb2Nrcywgc28gaXQgYWxsb3dzIHVzIHRvIHByb3Blcmx5IAo+IHBvd2Vy
ZG93biB0aGUgUEhZIGV2ZW4gdGhvdWdoIG90aGVyIGNsaWVudHMgYXJlIHZvdGluZyBmb3IgQ1hP
IG9uLiAgVGhlbiAKPiB3ZSBvYnZpb3VzbHkgaGF2ZSB0byByZW1vdmUgb3VyIHZvdGUgdG8gdGhl
IG92ZXJhbGwgQ1hPLCBzbyB0aGF0IGl0IGNhbiAKPiBwb3RlbnRpYWxseSBiZSBzaHV0ZG93bi4K
PiAKPiBNYXliZSB3ZSBjYW4gcmVuYW1lIGl0IHRvICJjbGtyZWYiIGZvciB0aGUgQ1hPIGhhbmRs
ZSBhbmQgCj4gImNsa3JlZl9zd2l0Y2giIGZvciB0aGUgVENTUkNDIGhhbmRsZT8KCk5hbWluZyBp
cyBiZXR0ZXIsIGJ1dCBpdCBpcyBzdGlsbCBub3QgY29ycmVjdC4gVGhpcyBpcyBub3QgaW5kZXBl
bmRlbnQKY2xvY2sgc2lnbmFsLiBJdCBpcyB0aGUgc2FtZSBjbG9jay4KCgpCZXN0IHJlZ2FyZHMs
CktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
