Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46EFC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 14:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBoJz03KdaVWOCTDd7h88sVhBY/z16CmmO31QK6IAQs=; b=Sy0mqDieE6LHmB
	Wp+3St0PxZU8WpbC+0TadQMpKm/XZFOPEV34EBsaQgSyV5Ez/i/ttrGqfQs20Wfbromu8RLv0Y9Bk
	EasIcIK3uFhHIJdRFWDJkRZ1aZnUi+ZbZuDRCUCWsA2gSi1xcSOXPrxjpF+ilscrGLwG2RzBknWPt
	qyGAoyHftcoQLo53MUh6rl/YmwUau36jdnNAC4yUbR35a/tL8X8fCWr+1sn4gv639CNvqaQOkGk8m
	qxgyTQLHsMxqT1j/v6eNCSb/8CgojMPBejrgSe3kiUUHe73S9pGLkGpYs429/KqosZLO62bUc5NA4
	zht0kHDspVl6wPCjYXyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmB7E-00000009br4-1hfG;
	Tue, 21 Jul 2026 14:06:36 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmB7C-00000009bq7-1jER
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 14:06:35 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c16794450aeso818273666b.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 07:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784642792; x=1785247592; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sizHsiXLEVRMUTlHJ17CUIbyBUb9Anbko+cLuXMaFUs=;
        b=mos2+HDaws8GXRbRNTakDUig4mxrqSDJo4r7kcXGjZMRKXBVc9G1LS/rnSpcKOTH1x
         RdTiZ4gqc5rWhWoF5GeRtcpenV8+TLd9wSaioVHF2UTaLT4leNLuNvweG7hPHoUXbeNU
         B+PqWCRlHKB64XMkPiPvdLscBd1ME8Wo//4Qoai8ZUDIn085q2DxUChTxJcgXlVq59qS
         8PmyJWijvxZM02LjczbQmJ2sZWdzcgkdqlZG0s5TUwaaPDWG3Jgvd0MP4B+a1AKhqQ9y
         bCHvjEIFCqIAZUIszM3dvHHfpFXnDKI4CBv7w+Gntv86GLpip8nPSAQdqb+SjtilFCDf
         mIuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784642792; x=1785247592;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sizHsiXLEVRMUTlHJ17CUIbyBUb9Anbko+cLuXMaFUs=;
        b=UqufoAVjmJBQUYeqnkRNnnP7x8MEo3JSxMYvc1BSewC0bS+q8KfcTxBplhucP/QOkK
         eB5zzbNhsIgYcP1fmqrun3oVI8Joab1h0bCIygbducPYC9ycyjvapNe8PMe6U5HIjAip
         Fq5tuGMlDXkewBwfvqZXMIJIgwXuh2WsvBPzB4N8QyZhwxnEdrYHceFvk7nqp4TfBYd5
         XxboBAb4Md9K7MEjdV29RT8yTqen6LZFRYimvl7R9tJfjKetgOn8V+Dg/FUkp/5C49KU
         WCZXaChU8GpPDBIvkv4Fn0he6baTxVlEsOBHvzBmDVYPqQrBve5Lv86BQyFc+L9yAiuW
         /EyA==
X-Forwarded-Encrypted: i=1; AHgh+RqB1ewqC2zdbmzMOZ01wQURw+FME8cBEB370vHcD2VlsasP2gfjnL1kpJmyiIkoj/TJemdDRKKtMyU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdRPcTB9J+ZsqF0i6Ns6lzbIyD750dv+NXIQXKingwDgJ0eU/W
	LczVg/c0TsEaEZkz00nOi8XUS7hQC+RZpnO1knVkdW4VmFRIpmjVU2zRFdxs74sa/Hw=
X-Gm-Gg: AR+sD13xonJsz/40vKsyU0IR8gtrPmvmf1P9NPU2z4nsMVqkMB+pHp7QJdzJHSUC+KB
	fiv7LuhydM3kJe21d4Q9kMBoAMm+c/CcHrgrl3TOEgq6H5n1DhUB6DDYoGj7rmiGz3aLZDOAoov
	LYu5O/n3/mMi2U2GOdtoKMYrpKCYz/CoWrKRZ2sBf9eabyTBcqu5xQ4+LIXQhDsPJYaNztHFYgF
	vqT99gj5amTkk0vHMGc+pLCbp5Tlswtd8gdwucOV1pbqo9xuGUGDRb/N0skDhlCad4Xkzy0FaEi
	X+IKDkxkq75WgSoxf7ObP6oWQj1zynF/vNFfsJgNb03xOTIuOvE4y2sntW2n31HJzWHAMEC5PbB
	96CiqfKelJ6O5mOCeVcOfYMk3xPP2iLmIE34TpCJPJb9v9EBnqfxdmN5pHQMK0dh7JOItrrEqDO
	DhWZPL0+P2PEJjFOrk4pHqZE52Iw==
X-Received: by 2002:a17:907:9627:b0:c1c:2c22:3aa4 with SMTP id a640c23a62f3a-c1c2c224b1fmr47399366b.56.1784642792212;
        Tue, 21 Jul 2026 07:06:32 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.186.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1740bf5df5sm589883666b.61.2026.07.21.07.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 07:06:31 -0700 (PDT)
Message-ID: <33b60b3f-c256-4c48-9608-5bd23f18b1e5@linaro.org>
Date: Tue, 21 Jul 2026 15:06:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
 <LyWJAb2qKsAFTMHNJUce9VqoqbkFKUQanb6z8ziA63RYZ1P9jj1XpA83uGPvz9m4QnWvEjJFK8dGD_8EtioHVQ==@protonmail.internalid>
 <0da6d314-bfa9-493a-bcc6-8c3b75751d0c@linaro.org>
 <88ae6662-cb85-4e3a-bbb5-1b536348df34@kernel.org>
 <_t1jiMTX3iIXhUkTDz0Cbh_uZhdUK_Y8vlIwxt1VNRbuKuRnpVCWabal-b4AuFrVaKrDnQSFOWtDn6-VCbS3DA==@protonmail.internalid>
 <345ca98e-09f6-4965-87bb-e64dac096498@linaro.org>
 <c236cf94-a775-4158-88db-9a337c7fa862@kernel.org>
 <e8bc8ade-d699-497e-8c4a-fbdc03fcc549@linaro.org>
 <wzsAes-UM4_r8scRyy_yhd39ZdxvT8W9VroVPOGWABLsw7MqR05o_z2MwhgiC1gTSBgfVHpXWADbsqoIOsR0Uw==@protonmail.internalid>
 <ec3d6035-d4de-4e38-8c72-b29a04b263ae@linaro.org>
 <1f128571-ed46-4a60-9594-74fdd5f440d0@kernel.org>
 <864c13a0-a52c-43f4-9d94-646bf66ba31a@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <864c13a0-a52c-43f4-9d94-646bf66ba31a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_070634_493648_7E04B9A1 
X-CRM114-Status: GOOD (  13.68  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjEvMDcvMjAyNiAxNDozNSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+Pgo+PiBIYWQg
YSBicmllZiBkaXNjdXNzaW9uIHdpdGggVmxhZCwgTmVpbCBhbmQgVmlub2QKPj4KPj4gUmVzb2x1
dGlvbjoKPj4KPj4gLSBwaHlzID0gPD4gcmV0YWluZWQKPiAKPiBJdCBzaG91bGQgc3VmZmljZSBh
cyBhbiBvcHRpb25hbCBwcm9wZXJ0eSwgbW9yZW92ZXIgYW55IGtpbmQgb2YKPiBwaHkgaW50ZXJm
YWNlIHVzYWdlIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBkb25lIGZyb20gQ1NJRCBkcml2ZXIuCj4g
Cj4+IC0gcGh5LWNlbGxzID0gPDA+Cj4+IC0gYnVzLXR5cGUgZnJvbSB0aGUgbWVkaWEtY29udHJv
bGxlcgo+PiDCoMKgwqAgQWxyZWFkeSBzcGVjaWZpZWQgd2l0aCBjYW1zcyBzdGlsbCBhbGlnbnMg
d2l0aCBSb2IncyBkZWNsYXJhdGlvbgo+PiDCoMKgwqAgInRoZSBjb25zdW1lciBkZWZpbmVzIHRo
ZSBtb2RlIiBzbyBJJ20gY29tZm9ydGFibGUgd2l0aCB0aGlzCj4+IMKgwqDCoCBjb21wcm9taXNl
IHBvc2l0aW9uLgo+PiDCoMKgwqAgVGhpcyB3aWxsIHN0aWxsIGZhY2lsaXRhdGUgQ1BIWSB3b3Jr
L21vZGUtc2VsZWN0aW9uIHZpYQo+PiDCoMKgwqAgcGh5X29wcy0+Y29uZmlndXJlKCkgd2l0aCBo
b3cgdG8gZGVmaW5lIHRoZSBDUEhZIHBhcnQgVEJELgo+IAo+IEFzIGl0IHdhcyBkaXNjdXNzZWQg
dGhlcmUgc2hvdWxkIGJlIG5vIHBoeSBzcGVjaWZpYyBpbnRlcmZhY2VzCj4gYmV0d2VlbiB0aGlz
IHBoeSBkcml2ZXIgYW5kIENBTVNTIGRyaXZlci4KCkknbSBwcm9iYWJseSBub3QgZ2V0dGluZyB0
aGlzIHBvaW50LCBzb3JyeSBhYm91dCB0aGF0LiBGb3IgY2xhcml0eSAKdGhvdWdoIENBTVNTIHdp
bGwgdXNlIHBoeXMgPSA8PiBhbmQgdGhlIFBIWSBBUEkgcGh5X2dldCgpLCAKcGh5X3Bvd2VyX29u
KCksIG9yIHBoeV9jb25maWd1cmUoKSBhcyB0aGVyZSdzIG5vIG90aGVyIHBvc3NpYmxlIAppbnRl
cmZhY2UgdG8gdGhpcyBkcml2ZXIuCgo+IAo+PiAtIGRhdGEtbGFuZXMgPSA8MCAxIDIgMz4gdmFs
aWQKPiAKPiBXb3VsZCBiZSBuaWNlIHRvIGdldCBhbiBhY2sgZnJvbSBsaW51eC1tZWRpYSBtYWlu
dGFpbmVycyBvbiBpdC4KPj4gLSBNQVhfTEFORVMgOCBpbnN0ZWFkIG9mIE1BWF9EQVRBX0xBTkVT
IDcKPiAKPiBTaW5jZSAnZGF0YS1sYW5lcycgdmFsdWUgZm9sbG93cyBzb21lIHJlZ2lzdGVyIGJp
dHMgYW5kIG5vdAo+IHRoZSBhY3R1YWwgUENCIGxhbmVzIGFzIGluIHZpZGVvLWludGVmYWNlcy55
YW1sLCB0aGlzIHNoYWxsIGJlCj4gZXhwbGljaXRseSBkZXNjcmliZWQgaW4gdGhlIENTSVBIWSBk
dCBiaW5kaW5nIGRvY3VtZW50YXRpb24uCgpZZXMgd2Ugc2FpZCB0aGF0Lgo+PiAtIHYxNCB3aXRo
IHRoZXNlIGNoYW5nZXMgc2hvcnRseS4KPj4KCi0tLQpib2QKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
