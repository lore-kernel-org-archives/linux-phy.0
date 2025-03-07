Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E4FC19F32
	for <linux-phy@archiver.kernel.org>; Fri,  7 Mar 2025 07:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLbIm8NjhdPqIr+MvBCtv/y+2kiJapXrAFElIWwClaM=; b=JlVkSgGsv6/SLP
	vdsH2VCGME9ad3Fg0+wgg4IjHAqriz6Rq8H7XF3nPCZJCFvBUEgrk01VIyF+hYNvY/QcCwzVCxQ0N
	kV98FqQRj5owWnNNY4BRR9BnTbUCXn45EPm1l+a/9/mdg5xl2UPcknXMi1iWFhdgqjp0W7wBRci3o
	jrxGQNEAlpaA9ckbbqbaatp95TyHZrqorsHK8CKoes/9iFUEi1fH3TqUQhoEbGksFuBV1psZIMrQ0
	ROLpY8+ZqqjQ1reO8Hg/uWDsfZ/JJdcFR7fmJwsxUlrVDN2T8O1qFhgi4U43rgWk+thtQuZ6fnlcm
	hJ1khtRM0/FQmuWtMCnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRsN-0000000DPc8-3E5U;
	Fri, 07 Mar 2025 07:12:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRqu-0000000DPS8-0Rtn
	for linux-phy@lists.infradead.org;
	Fri, 07 Mar 2025 07:10:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 85ED6A4553E;
	Fri,  7 Mar 2025 07:05:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D06B4C4CEE2;
	Fri,  7 Mar 2025 07:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741331434;
	bh=a5miTD1abVMgj3/j89zRVh6kuZLoji7VxTlmh6kIsG8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eyyYH9pIqBJjTIF5XoIwd4/HcaDTyzwm24wtjoqrPdUJLXsqyi/6G3jBX3YbebjX0
	 7Oh4TKa7Oefbr98INX++fnNTeMdZiBboMsBoMiBroJlNkyOdCLhiHc4mM2WO9b3sAF
	 rIr+WOm4jpzy4q+p75a+DweRHjtZoOyaOYfOR+E/RP02vzjoLffssa/3AG5Jg0ESzP
	 FUt8L5qE1amzN5gW+DwSHa4cmNkJBa26kymmW8LhFxQlr/GRRCRWhX0zexAQaE2Zqn
	 EgILoXHxD3uJoHYP8Gr/2+zlUItrwWAvAFX/wJTvcA5ueQri+bVDIzX7fgQPI+Z4ZK
	 ASDCBXDfAo77w==
Message-ID: <4560876d-22d0-408c-8fc6-63bb79ae1249@kernel.org>
Date: Fri, 7 Mar 2025 08:10:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/7] Add PCIe support for Qualcomm IPQ5332
To: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
 lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
 dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250220094251.230936-1-quic_varada@quicinc.com>
 <20250220144551.GB1777078@rocinante>
 <d399a2be-3010-43fc-9531-e4f3560ea6df@kernel.org>
 <20250306125940.GC478887@rocinante>
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
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJgPO8PBQkUX63hAAoJEBuTQ307
 QWKbBn8P+QFxwl7pDsAKR1InemMAmuykCHl+XgC0LDqrsWhAH5TYeTVXGSyDsuZjHvj+FRP+
 gZaEIYSw2Yf0e91U9HXo3RYhEwSmxUQ4Fjhc9qAwGKVPQf6YuQ5yy6pzI8brcKmHHOGrB3tP
 /MODPt81M1zpograAC2WTDzkICfHKj8LpXp45PylD99J9q0Y+gb04CG5/wXs+1hJy/dz0tYy
 iua4nCuSRbxnSHKBS5vvjosWWjWQXsRKd+zzXp6kfRHHpzJkhRwF6ArXi4XnQ+REnoTfM5Fk
 VmVmSQ3yFKKePEzoIriT1b2sXO0g5QXOAvFqB65LZjXG9jGJoVG6ZJrUV1MVK8vamKoVbUEe
 0NlLl/tX96HLowHHoKhxEsbFzGzKiFLh7hyboTpy2whdonkDxpnv/H8wE9M3VW/fPgnL2nPe
 xaBLqyHxy9hA9JrZvxg3IQ61x7rtBWBUQPmEaK0azW+l3ysiNpBhISkZrsW3ZUdknWu87nh6
 eTB7mR7xBcVxnomxWwJI4B0wuMwCPdgbV6YDUKCuSgRMUEiVry10xd9KLypR9Vfyn1AhROrq
 AubRPVeJBf9zR5UW1trJNfwVt3XmbHX50HCcHdEdCKiT9O+FiEcahIaWh9lihvO0ci0TtVGZ
 MCEtaCE80Q3Ma9RdHYB3uVF930jwquplFLNF+IBCn5JRzsFNBFVDXDQBEADNkrQYSREUL4D3
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
 YpsFAmA872oFCRRflLYACgkQG5NDfTtBYpvScw/9GrqBrVLuJoJ52qBBKUBDo4E+5fU1bjt0
 Gv0nh/hNJuecuRY6aemU6HOPNc2t8QHMSvwbSF+Vp9ZkOvrM36yUOufctoqON+wXrliEY0J4
 ksR89ZILRRAold9Mh0YDqEJc1HmuxYLJ7lnbLYH1oui8bLbMBM8S2Uo9RKqV2GROLi44enVt
 vdrDvo+CxKj2K+d4cleCNiz5qbTxPUW/cgkwG0lJc4I4sso7l4XMDKn95c7JtNsuzqKvhEVS
 oic5by3fbUnuI0cemeizF4QdtX2uQxrP7RwHFBd+YUia7zCcz0//rv6FZmAxWZGy5arNl6Vm
 lQqNo7/Poh8WWfRS+xegBxc6hBXahpyUKphAKYkah+m+I0QToCfnGKnPqyYIMDEHCS/RfqA5
 t8F+O56+oyLBAeWX7XcmyM6TGeVfb+OZVMJnZzK0s2VYAuI0Rl87FBFYgULdgqKV7R7WHzwD
 uZwJCLykjad45hsWcOGk3OcaAGQS6NDlfhM6O9aYNwGL6tGt/6BkRikNOs7VDEa4/HlbaSJo
 7FgndGw1kWmkeL6oQh7wBvYll2buKod4qYntmNKEicoHGU+x91Gcan8mCoqhJkbqrL7+nXG2
 5Q/GS5M9RFWS+nYyJh+c3OcfKqVcZQNANItt7+ULzdNJuhvTRRdC3g9hmCEuNSr+CLMdnRBY fv0=
In-Reply-To: <20250306125940.GC478887@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_231036_323593_57F50412 
X-CRM114-Status: UNSURE (   8.19  )
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

T24gMDYvMDMvMjAyNSAxMzo1OSwgS3J6eXN6dG9mIFdpbGN6ecWEc2tpIHdyb3RlOgo+IEhlbGxv
LAo+IAo+Pj4+IFBhdGNoIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIGVuYWJsaW5nIHRoZSBQQ0ll
IGNvbnRyb2xsZXIgYW5kCj4+Pj4gVU5JUEhZIGZvdW5kIG9uIFF1YWxjb21tIElQUTUzMzIgcGxh
dGZvcm0uIFBDSWUwIGlzIEdlbjMgWDEgYW5kCj4+Pj4gUENJZTEgaXMgR2VuMyBYMiBhcmUgYWRk
ZWQuCj4+Pgo+Pj4gQXBwbGllZCB0byBkdC1iaW5kaW5ncywgdGhhbmsgeW91IQo+PiBJIHdpbGwg
c2VuZCByZXZlcnRzIGZvciB0aGVzZS4gVGhpcyBwYXRjaHNldCBhZmZlY3RzIHVzZXJzIHdpdGhv
dXQKPj4gbWVudGlvbmluZyBpdCBhbmQgd2l0aG91dCBwcm92aWRpbmcgYW55IHJhdGlvbmFsZS4K
Pj4KPj4gV2hhdCdzIG1vcmUsIGl0IGludHJvZHVjZXMga25vd24gdG8gYXV0aG9yIHdhcm5pbmdz
IGp1c3QgdG8gZml4IHRoZW0KPj4gbGF0ZXIuLi4KPiAKPiBUaGUgZm9sbG93aW5nIGNvbW1pdDoK
PiAKPiAgIDgyOWFhMzY5M2Y4ZCAoImR0LWJpbmRpbmdzOiBQQ0k6IHFjb206IFVzZSBTRFg1NSAn
cmVnJyBkZWZpbml0aW9uIGZvciBJUFE5NTc0IikKPiAKPiBTaG91bGQgbm8gbG9uZ2VyIGJlIHBy
ZXNlbnQuICBIb3dldmVyLCB3ZSBzdGlsbCBjYXJyeSB0aGUgZm9sbG93aW5nIGNvbW1pdDoKPiAK
PiAgIGY2N2QwNGIxODMzNyAoImR0LWJpbmRpbmdzOiBQQ0k6IHFjb206IERvY3VtZW50IHRoZSBJ
UFE1MzMyIFBDSWUgY29udHJvbGxlciIpCgoKVGhhbmtzLCBJIGxvb2tlZCBicmllZmx5IGFuZCBp
dCBzZWVtZWQgZmluZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
