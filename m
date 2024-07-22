Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8835BC3DA59
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 15:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKio99DHkZ3nV7udOsYhsxC4X1npmCg3lrEpB9wjsBQ=; b=JrVUdHa5DYmFUs
	Nfrn0bPZVjwlM+aInK/6ho7Gge3wc7qyI8G3q6fFbZjXvP6JjXGjBHM0GqEpxBspBQobjz+H8CxXL
	ehDmgGfq5ju4ajDWG6rH9Pq9XVGdX2/Jms5fSa+/zMH7J/nZUkGgZnMU9mkd2krzCoLAdcDA3AFAf
	oFdlbzbJQDk/XRa4kwZPJbPNL7oWb+xYRFmrw5wOZ03EhjwboWT7UNzTcgFpJwxPJA7Z+1Aw4B2Dp
	hSZPYf0vG6k+r4z4LfTmXOHeb7TrJ1bev1zvFkmPbbxF7hp6HjHkiUny4AzRu10mjfvI7I1vJqxPf
	+VqBrRgmXU5yKqL4K5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvF9-00000009zh4-12vO;
	Mon, 22 Jul 2024 15:46:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvEl-00000009zd4-23LD;
	Mon, 22 Jul 2024 15:46:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8D0860B40;
	Mon, 22 Jul 2024 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C05CC116B1;
	Mon, 22 Jul 2024 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721663166;
	bh=KVrgqRJLa009HN4Ih+y3E93YQ8tVG0uoPOXEzO3x/NU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RGIxXZkQ68lohhADyn52Cg+38TEDGVf/glHLE77lTVok65fMxbA0wY9K1e/TlZf+O
	 gKq6DPvc0zuZ0MCfCiYqB/33FsCyGhlYk+qbQicjfNQcb6tJ6CPBtDDkatYry1Cp0H
	 0llqMxJSm7ujzoY1zu8XNWwczFAUQtf33wrZzEwLI0NpUci0BAP8VYn4VMH67w457D
	 l33mH+a12ZZYLW9PnzMakvA11dfsXpUlewaUGPgSEpnW7CPmdYhx15KnjXAzpijyjw
	 rKpIRH1x71JDh02tPG493WEEtpHZxN95mGnwR6//0Rlbc68uXtuLzzUzh90+U1LL3j
	 JVDVhEoPwIjvw==
Message-ID: <f8e0ff0f-8b6a-4735-aaa8-803a5ea6cf54@kernel.org>
Date: Mon, 22 Jul 2024 17:45:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
To: Josua Mayer <josua@solid-run.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Konstantin Porotchkin <kostap@marvell.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
 <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
 <14090e3b-e627-4342-91b0-d6d0b769b736@solid-run.com>
 <55671e6b-abb3-4773-9f55-41920a3ff8f4@solid-run.com>
 <14f53dce-e26e-4af3-9275-f2aef4e03c98@kernel.org>
 <53c3dbc6-5d14-455f-8c3d-6a7293068ed9@solid-run.com>
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
In-Reply-To: <53c3dbc6-5d14-455f-8c3d-6a7293068ed9@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_084607_680703_FA647CE5 
X-CRM114-Status: UNSURE (   8.91  )
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

T24gMjIvMDcvMjAyNCAxNzozMSwgSm9zdWEgTWF5ZXIgd3JvdGU6Cj4+Cj4+PiDCoMKgwqDCoMKg
IC0gY29tcGF0aWJsZQo+Pj4gwqDCoMKgwqDCoCAtIHJlZwo+Pj4gwqDCoMKgwqDCoCAtICIjYWRk
cmVzcy1jZWxscyIKPj4+IMKgwqDCoMKgwqAgLSAiI3NpemUtY2VsbHMiCj4+PiDCoCAtIGlmOgo+
Pj4gwqDCoMKgwqDCoCBub3Q6Cj4+PiDCoMKgwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgIHJlZy1uYW1lczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWxs
T2Y6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnRhaW5zOgo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogdXNiLWNmZwo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb250YWluczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Q6IHV0bWktY2ZnCj4+PiDCoMKgwqAgdGhlbjoKPj4+IMKgwqDCoMKg
wqAgcmVxdWlyZWQ6Cj4+PiDCoMKgwqDCoMKgwqDCoCAtIG1hcnZlbGwsc3lzdGVtLWNvbnRyb2xs
ZXIKPj4+Cj4+PiBUaGlzIHdvcmtzIG9rYXkgZm9yIGFueSBjb21iaW5hdGlvbnMgb2YgcmVnLW5h
bWVzLgo+PiA/Pz8gSSBleHBlY3RlZCB0aGlzIHRvIGJlIHBlciB2YXJpYW50Lgo+IEFzIGluIGJ5
IGNvbXBhdGlibGUgc3RyaW5nPwoKWWVzLCBlYWNoIGRldmljZSBoYXMgZml4ZWQgcHJvcGVydGll
cywgYXQgbGVhc3QgdXN1YWxseS4KCj4+Cj4+PiBIb3dldmVyIHdoZW4gZGV2aWNlLXRyZWUgaXMg
bWlzc2luZyByZWctbmFtZXMgYWxsIHRvZ2V0aGVyLAo+Pj4gbWFydmVsbCxzeXN0ZW0tY29udHJv
bGxlciBpcyBub3QgbWFya2VkIHJlcXVpcmVkLgo+Pj4KPj4+IFdvdWxkIGl0IGJlIGFjY2VwdGFi
bGUgdG8gbWFrZSByZWctbmFtZXMgcmVxdWlyZWQ/Cj4+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0
IHlvdSB3YW50IHRvIGFjaGlldmUuCj4gV2hlbiB0aGVyZSBhcmUgYm90aCB1c2ItY2ZnIGFuZCB1
dG1pLWNmZyByZWdzLAo+IHRoZW4gbWFydmVsbCxzeXN0ZW0tY29udHJvbGxlciBpcyBvcHRpb25h
bCwKPiAKPiByZWdhcmRsZXNzIG9mIGFybWFkYSAzODAgb3IgOGsuCgpXaGV0aGVyIHRoZSBkZXZp
Y2UgaGFzIGFkZGl0aW9uYWwgTU1JTyBhZGRyZXNzIHNwYWNlLCBkZXBlbmRzIG9uIHR5cGUgb2YK
dGhlIGRldmljZSwgbm90IG9uIHNvbWUgb3RoZXIgcHJvcGVydGllcy4gSU9XLCBlaXRoZXIgeW91
IGhhdmUgaGVyZQpzZWNvbmQgcmVnIG9yIG5vdC4gVGhlIGhhcmR3YXJlIGhhcyBvciBoYXMgbm90
LgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
