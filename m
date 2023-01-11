Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA45FC5479D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 12:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwUgRIHP9LuKWJs3l2kI+2xbM+fR6Er3Ni72Yf31YzM=; b=KShSn6wRkZ1X+H
	PqbqUTTnQ+1zxaQHqYgYHtBsnNh0YW33J9xbKZg+VWguJ5GbFhmhOF1RgOMCqE300WQDVAL07vH7k
	ir6DC+6H3f6KnYDMx5gLq/nEPObjwoij8osa28k41KO37ryWczopoD82hzhULbJ0LcxIw1UIHUqKp
	CN8M1htRJyg+CzI73GAW0fmU/Sehfx7YSQeza4H8zk9llbIxsdu4CSHrSNcfcyojDNTssfsQsFJA8
	BDKxmW+/bIqjGQCGPaAvv5pURoLjNBF0BIjHwpbSohGBof3Z2j+bpwq5NkE58217JL/xdpHFWMkBT
	GOg6gBbegUVuFqC5Dahw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZq4-00BCC9-Vp; Wed, 11 Jan 2023 12:04:16 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZq2-00BCBe-70
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 12:04:15 +0000
Received: by mail-lf1-x134.google.com with SMTP id bt23so23134117lfb.5
        for <linux-phy@lists.infradead.org>; Wed, 11 Jan 2023 04:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2oib4YU24Hg68PTgy4DxuaT37C/z9vNFEJMvu+koqaY=;
        b=Yy/wIOuY/mFgyZnqWknq7oufXkKfIJpeAPs84I4+i270V8tAVh5OYNivurb3d88WHK
         uae4/ORSHaMCUQ3RCcyBZdM04wm6rZsmDtV/ya95RwGk1c5jgtG+x+IHRAGg1b6Wj6pb
         K2NiOMA/FxKlMAWVqwLyiZWeGJGZS13iBR9GbWx86XYBFXbnAEcRn7Cl+d2QBZ9YWSo+
         0Aw7qV86J1dEpWMr+gDeDfj+SiQG1irUeiDiTBi36ywjeW+2XPUX+In9OHhmmzJaHpkW
         iDK0elnAnK5UQ/04iRbCjndgeJGzppkb/zvFmsbfELoNPvM44+gC7y53cSR0bgZi9eAv
         ZhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2oib4YU24Hg68PTgy4DxuaT37C/z9vNFEJMvu+koqaY=;
        b=NMMl74FCiSFlWPjfhvip1Fyp7bdwlKffGl1mOMYlwgu8bLJz3NXr2gZVtk7XW2LmKX
         eWntFhEr8cHlQKGJOp3kpGQ0xx6tsn6EthWBsupDC928kn2aJGXOnr7xQF6PsgA/hZCL
         7HenLqz9Oj2Xi2OFo5SYlKrPAOj/NN6QULelgM2r9Q1GBYARS3pdfngUp+9yi447Ktzc
         aVN/tDVXxddwPX5kqDwFjJCis9EeiBjtW6UGCfQihvQqXtZAMiVIh3oeOSxW5OgvT31W
         4v68BpVgpBLJEPL2ibbwKmummkvfqjCzq7A+B/+o4ZZLAG98Gh1OwJuLLFUtZwoYwz83
         tnxA==
X-Gm-Message-State: AFqh2kq49KBCoj38g1JV+ZmH9xKA+nzwCO34nI+/XycWul1fXr1CCyxW
	b5RH9YL48yylzaJsP3tKOxoGQA==
X-Google-Smtp-Source: AMrXdXuQdQMK1AzkjuSB62xM9jMBO+9t20jvTxLZnjpxuujgsDdeHG1DQzho+opaRd7jkzomUYB4aQ==
X-Received: by 2002:a05:6512:3b99:b0:4a4:68b9:608c with SMTP id g25-20020a0565123b9900b004a468b9608cmr24899693lfv.23.1673438652184;
        Wed, 11 Jan 2023 04:04:12 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id d19-20020a196b13000000b004b550c26949sm2688197lfa.290.2023.01.11.04.04.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 04:04:10 -0800 (PST)
Message-ID: <51a8bb85-8fda-2d79-f753-9461316bae9e@linaro.org>
Date: Wed, 11 Jan 2023 13:04:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 4/6] arm64: dts: qcom: sm6125: Add UFS nodes
Content-Language: en-US
To: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-5-they@mint.lgbt>
 <475d3f2f-114f-d6d2-89db-465ba7acd0d6@linaro.org>
 <f1f1337a-30cc-df3c-81d5-2daac61e874c@mint.lgbt>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <f1f1337a-30cc-df3c-81d5-2daac61e874c@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_040414_301643_6819B341 
X-CRM114-Status: GOOD (  11.62  )
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

CgpPbiAxMS4wMS4yMDIzIDAzOjUzLCBMdXggQWxpYWdhIHdyb3RlOgo+IAo+IE9uIDA5LzAxLzIw
MjMgMDk6MTgsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+Cj4+IE9uIDguMDEuMjAyMyAyMDo1Mywg
THV4IEFsaWFnYSB3cm90ZToKPj4+IEFkZHMgYSBVRlMgaG9zdCBjb250cm9sbGVyIG5vZGUgYW5k
IGl0cyBjb3JyZXNwb25kaW5nIFBIWSB0bwo+Pj4gdGhlIHNtNjEyNSBwbGF0Zm9ybS4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBMdXggQWxpYWdhIDx0aGV5QG1pbnQubGdidD4KPj4+IC0tLQo+Pj4g
wqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjEyNS5kdHNpIHwgNTcgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjEyNS5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjEyNS5kdHNpCj4+PiBpbmRleCBkZjU0NTNm
Y2YyYjkuLmNlYzcwNzFkNTI3OSAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9zbTYxMjUuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtNjEy
NS5kdHNpCj4+PiBAQCAtNTExLDYgKzUxMSw2MyBAQCBzZGhjXzI6IG1tY0A0Nzg0MDAwIHsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4+IMKgICvCoMKgwqDCoMKgwqDCoCB1ZnNfbWVtX2hjOiB1ZnNA
NDgwNDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20s
c202MTI1LXVmc2hjIiwgInFjb20sdWZzaGMiLCAiamVkZWMsdWZzLTIuMCI7Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwNDgwNDAwMCAweDMwMDA+LCA8MHgwNDgxMDAwMCAw
eDgwMDA+Owo+PiBZb3UgbmVlZCByZWctbmFtZXMgZm9yIElDRSB0byBwcm9iZSwgb3RoZXJ3aXNl
IHRoZSBzZWNvbmQgcmVnIHNpdHMgdW51c2VkLgo+Pgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM1NiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeXMgPSA8JnVmc19tZW1fcGh5PjsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9ICJ1ZnNwaHkiOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbGFuZXMtcGVyLWRpcmVjdGlvbiA9IDwxPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICNyZXNldC1jZWxscyA9IDwxPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
c2V0cyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0JDUj47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXNldC1uYW1lcyA9ICJyc3QiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW9tbXVz
ID0gPCZhcHBzX3NtbXUgMHgyMDAgMHgwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgImJ1c19hZ2dyX2NsayIsCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJpZmFjZV9jbGsiLAo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY29yZV9jbGtfdW5pcHJvIiwKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInJlZl9jbGsiLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidHhfbGFuZTBfc3lu
Y19jbGsiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
cnhfbGFuZTBfc3luY19jbGsiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAiaWNlX2NvcmVfY2xrIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNs
b2NrcyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0FYSV9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19TWVNfTk9DX1VGU19QSFlfQVhJX0NMSz4sCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfQUhCX0NM
Sz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19Q
SFlfVU5JUFJPX0NPUkVfQ0xLPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JnJwbWNjIFJQTV9TTURfWE9fQ0xLX1NSQz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1CT0xf
MF9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19V
RlNfUEhZX0lDRV9DT1JFX0NMSz47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcmVxLXRh
YmxlLWh6ID0gPDUwMDAwMDAwIDI0MDAwMDAwMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPDAgMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPDAgMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPDM3NTAwMDAwIDE1MDAwMDAwMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPDAgMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPDAgMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDAgMD4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDc1
MDAwMDAwIDMwMDAwMDAwMD47Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+PiArCj4+PiArwqDCoMKg
wqDCoMKgwqAgdWZzX21lbV9waHk6IHBoeUA0ODA3MDAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxzbTYxMjUtcW1wLXVmcy1waHkiOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDQ4MDcwMDAgMHgxYzQ+Owo+PiBJc24ndCB0aGlz
IHRvbyBzbWFsbD8gRG93bnN0cmVhbSBzYXlzIDB4ZGI4LCBidXQgaXQncyBwcm9iYWJseSBldmVu
IGJpZ2dlci4uCj4gV2hhdCBkbyB5b3UgdGhpbmsgY291bGQgaGVscCBtZSBmaW5kIHRoZSBuZXcg
bGVuZ3RoIG9mIHRoZSByZWdpc3RlcnM/IEkgdHJpZWQgMHgxMDAwIGFuZCBpdCBwcm9iZWQganVz
dCBmaW5lLCBidXQgSSdtIG5vdCByZWFsbHkgc3VyZSB1bnRpbCB3aGF0IGV4dGVudCBJIGNvdWxk
IHB1c2ggaXQuClRoZSAidHJ1ZSIgdmFsdWVzIGFyZSBwcm9iYWJseSBvbmx5IGluIGRvY3VtZW50
YXRpb24sIHdoaWNoCkkgZG9uJ3QgaGF2ZS4KCktvbnJhZAo+IAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
