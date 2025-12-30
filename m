Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8510E95A6C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 12:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcaJkLQy30y6JcoYbGQfkJsWQCGuAZqiPuG28ZcvgZc=; b=HgkAYCJshJSzWM
	Zu+k8Di9X4TKfzCdw6/Id0US5xVis0Xpq6s+j6uvKGLFXM6wHgQHmJmuTQPZbhcA7W1aUAzUkX8Pd
	hQHaK+vD1TYQKosjPVtEwAk0y5Jk/SZ++lhWhzxNqJ/UW32wF4TOSGyl26/WacYl3WrNw9sb3RQFv
	WV9uT31j6YyK2pB2ISFRxU1WKwvs4dTDvcIY0cB36v2ByFAqxfBDWG3ZqOBA3ryEpcfw4Tn+9RnuP
	rVBvhzzzwqRQCnyXPPQcQnSk2FsdW7bJjDafTWzbvxPmy11A7+TKNZP6FsRqi5nYCq5H9+Vg7Rdcl
	sTNhfn0LgUBP+kNjGhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaYWQ-00000004mrO-3eiT;
	Tue, 30 Dec 2025 12:08:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaYWP-00000004mrG-2Fsr
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 12:08:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A6DAB6000A;
	Tue, 30 Dec 2025 12:08:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC652C4CEFB;
	Tue, 30 Dec 2025 12:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767096496;
	bh=yI5DF24jsKj3Y3wOxiB313GUjr7v1Y9NV/pzVMsBSI4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bNdibkoz2LKycuUdpOc+1nmnA5eYwk735lwBq/E5VBbcVpL/jJ0o7LT5EVwLGxzyI
	 TOp1ncpMiEDTQd5WKwxej3QPYtInaTsxzJxslIPKKMdVUelM1TNbiW3eyIRfKmMZZ+
	 BgQQBj4yvNICXQWWDTcbuSs8VpCKTsXQsaWr0kZyPG2w0/NmjxMdtqheBd5hfUePwY
	 qWSR8ltBSXDq11ngaMiiG5DcB3x/V6d8yPdwJLpT2zxlBVy2WtoA569xdpcuAkZxZG
	 P2X+1jFV39HF6FsZ6xp8n8xN8E2+kxj2XbKyCiR4Y4EWsnRpYVKHSKi38+UiDCfeLB
	 SeRats5yCXRCA==
Message-ID: <dad6d254-d833-451e-bff1-eeb35876a2b0@kernel.org>
Date: Tue, 30 Dec 2025 13:08:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY
 compatible for Hamoa
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
 vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
 andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
 dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
 <f87a8caf-6c65-48b8-a372-1ebff95cb6f8@kernel.org>
 <86c649c8-7529-45c0-be13-93ff8f05aa44@oss.qualcomm.com>
 <9514be98-2bb4-423a-919c-eacd4b384f79@kernel.org>
 <d3d63b08-43ba-4b25-a939-416d5d647098@oss.qualcomm.com>
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
In-Reply-To: <d3d63b08-43ba-4b25-a939-416d5d647098@oss.qualcomm.com>
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

T24gMzAvMTIvMjAyNSAxMjoxMywgUHJhZGVlcCBQcmFnYWxsYXBhdGkgd3JvdGU6Cj4gCj4gT24g
MTIvMzAvMjAyNSAzOjA4IFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAzMC8x
Mi8yMDI1IDEwOjA1LCBQcmFkZWVwIFByYWdhbGxhcGF0aSB3cm90ZToKPj4+IE9uIDEyLzI5LzIw
MjUgMTI6NDEgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gT24gMjkvMTIvMjAy
NSAwNzowNiwgUHJhZGVlcCBQIFYgSyB3cm90ZToKPj4+Pj4gRG9jdW1lbnQgdGhlIFFNUCBVRlMg
UEhZIGNvbXBhdGlibGUgZm9yIFF1YWxjb21tIEhhbW9hIHRvIHN1cHBvcnQKPj4+Pj4gcGh5c2lj
YWwgbGF5ZXIgZnVuY3Rpb25hbGl0eSBmb3IgVUZTIGZvdW5kIG9uIHRoZSBTb0MuIFVzZSBmYWxs
YmFjayB0bwo+Pj4+PiBpbmRpY2F0ZSB0aGUgY29tcGF0aWJpbGl0eSBvZiB0aGUgUU1QIFVGUyBQ
SFkgb24gdGhlIEhhbW9hIHdpdGggdGhhdAo+Pj4+PiBvbiB0aGUgU004NTUwLgo+Pj4+IExhc3Qg
c2VudGVuY2UgaXMgcG9pbnRsZXNzLiBZb3Uga2VlcCBleHBsYWluaW5nIHdoYXQgeW91IGRpZCwg
YnV0IHlvdQo+Pj4+IGRpZCBub3Qgc2F5IHdoeS4gV2h5IEhhbW9hIGlzIGNvbXBhdGlibGUgd2l0
aCBTTTg1NTAsIGJ1dCBub3Qgd2l0aCBTTTg2NTA/Cj4+PiBpIHdpbGwgdXBkYXRlIGluIG15IG5l
eHQgcGF0Y2hzZXQuCj4+IEFjdHVhbGx5IHRoZSBwcm9ibGVtIGlzIHRoYXQgeW91IGludHJvZHVj
ZWQgY29tcGxldGVseSBuZXcgU29DIG5hbWUgLQo+PiBIYW1vYSAtIHNvIHRoYXQncyB3aHkgSSB3
YXMgd29uZGVyaW5nLiBJZiB5b3UgdXNlZCBjb3JyZWN0IG5hbWUsIFgxRSwgaXQKPj4gd291bGQg
YmUgbW9yZSBsb2dpY2FsIGFzIGl0IGlzIGJhc2ljYWxseSBTTTg1NTAuCj4+Cj4+IEJ1dCB0aGVu
IGZvbGxvdyB1cCBxdWVzdGlvbiAtIHdoeSBhcmUgeW91IGR1cGxpY2F0aW5nIGV4aXN0aW5nIHBh
dGNoZXM/Cj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAy
NTA4MTQwMDU5MDQuMzkxNzMtMi1oYXJyaXNvbi52YW5kZXJieWxAZ21haWwuY29tLwo+IAo+IEhp
IEtyenlzenRvZiwKPiAKPiBJ4oCZbSBub3QgZmFtaWxpYXIgd2l0aCB0aGVzZSBwYXRjaGVzIGlu
IGRldGFpbCwgYnV0IEkgbm90aWNlZCBzZXZlcmFsIGdhcHM6Cj4gCj4gICAqIFRoZSBVRlNIQyBj
b21wYXRpYmlsaXR5IHN0cmluZyB3YXMgbm90IGFkZGVkIGluIHRoZSBjb3JyZWN0IGZpbGUuCj4g
ICAqIEZhbGxiYWNrIGNvbXBhdGliaWxpdHkgd2FzIG5vdCB1dGlsaXplZC4KPiAgICogQSBQSFkg
Y2xvY2sgZW50cnkgaXMgbWlzc2luZy4KPiAgICogT1BQIGZyYW1ld29yayBpcyBub3QgdXNlZCBm
b3IgY2xvY2sgZnJlcXVlbmN5IGNvbmZpZ3VyYXRpb24uCj4gICAqIHxkbWEtY29oZXJlbmN5fCBl
bnRyeSBpcyBtaXNzaW5nLgo+ICAgKiBVRlMgbm9kZXMgYXJlIG5vdCBzb3J0ZWQuCj4gICAqIENs
b2NrIHByb3ZpZGVyIGVudHJpZXMgZm9yIHRoZSBHQ0Mgbm9kZSBhcmUgbWlzc2luZy4KPiAKPiBB
ZGRpdGlvbmFsbHksIHRoZXJlIGhhc27igJl0IGJlZW4gYW55IGZvbGxvdy11cCBvbiB0aGUgY29t
bWVudHMgc2luY2UgCj4gQXVndXN0IDIwMjUuIFNvLCBJ4oCZZCBsaWtlIHRvIHRha2UgdGhpcyB1
cCB3aXRoIG15Cj4gCj4gY3VycmVudCBzZXJpZXMuCj4gCj4gUGxlYXNlIGxldCBtZSBrbm93IHlv
dXIgdGhvdWdodHMuCj4gCj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmlj
ZXRyZWUvcDNtaHRqMnJwNnkyZXp1d3BkMmd1N2R3eDVjYmNrZnU0czRwYXpjdWRpNGoyd29ndHJA
NHllY2IyYmtleW1zLwoKVGhlIG9uZXMgaGVyZSByZWNlaXZlZCByZXZpZXcuIEkgcHJlZmVyIG5v
dCB0byByZS1yZXZpZXcganVzdCBiZWNhdXNlCnlvdSB3YW50IHRvIGdvIHdpdGggeW91ciBzZXJp
ZXMuLi4KCkJ1dCBpZiB5b3UgaW5zaXN0LCBhdCBsZWFzdCBkbyBpdCByaWdodC4gWW91IGFyZSBy
ZS1kb2luZyB0aGUgc2FtZSB3b3JrCmluIHdvcnNlIHdheS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
