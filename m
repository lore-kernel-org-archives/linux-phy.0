Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A55C64EC4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 17:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dO6TAJr7HZMOkcSBhe/VtytUUuEImbKC2e2gapn6/34=; b=i2Kl5sGtyq5QgW
	2hnLQSmkQx3XObQpl4uUtvZQDj/YRanOiWzgouaRk/9nXBp50sk7r0VrF/j0FHyaCGw+26tJ5JElb
	qMfjVLbHNkhE6BbkJQk5ONSktyB553/txqJzwiQQZF36Z9qw9y4U1lzZ/H7o6/8iMC+zl3WWeYvgF
	9pbk/Zkj1Tr2/fH68t4LqI5xY7Z4TDf9gChciB2u4iLb1t+hOcOHYLd8jJTzo6wmejsViN7qnNtzP
	aSvNuLlKMm5Ccd0+OHWO5fXxKosifYO7UAJRlrFX4URfU6qH5AMACeN8tFSZGCbPUVruvYFVloKW5
	ux4x/hCjeuamjA+XqGdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZELG-00E3xP-Ky; Mon, 06 Mar 2023 17:09:42 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZELC-00E3wF-OQ
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 17:09:40 +0000
Received: by mail-lf1-x130.google.com with SMTP id j11so13640984lfg.13
        for <linux-phy@lists.infradead.org>; Mon, 06 Mar 2023 09:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678122576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9qYKcnlpWdMlBpcagLtIlBclO/koVb4A2hugmwuDjQQ=;
        b=K/ALNyiVmwk2B7FaiVr9+CnGKCB/lcBSgTRyxUeKfghmfQ3LfkadXwYITQfgwcIYec
         yjLbnMfJ3Y5IcIHbvOSl0YxygbcPkImfyfF3A+daz2LzVPW5u/4J5vPm/5tQEFILCaUh
         WIg/nIbiQWKn450exLKg18eyoDQDd+A+VKIimnJd80kN1/NU6uuVcML52mI8fWP08JAw
         xlycx5pHeYzmF5FEiOmVmHyUN40f0U2Dw1GfbIStj1/0Pzf0DsZ0V0osDVJMRw53sgEf
         uafbaitDMcI/Gj7p0Emovr44UvrTN4G03BCks7HKCrIOLCewObrOT6IiwpTYtCTE00XI
         F53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678122576;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9qYKcnlpWdMlBpcagLtIlBclO/koVb4A2hugmwuDjQQ=;
        b=EJ9hyKJXMQrgpZSRjNxhC3g2BBqSofNdTrBGE0odDQji1TVY9GZZ9Uk4tzVl43TBy1
         sIF1//d6QRq7LfIm5CyybGHsMeGQ7LwiCBiNhbEU2FNUC/gGUQnUJo64KcIEvgvJA/l+
         ebByZAqH52bLh0Lqa2aU7jZzTcQLDFVVazISNzA1ICqGdu4S2QX3kD4FNYSERJqYcdoc
         YWEnfyAN3XtKYUjxhcVosfTlCWy0vkvJyHcKo7j/bn8VLCpjvaTIhCju0zdkYjuilVOz
         KglTngjLnVYAqTYGeyyvQLPfzYoWDpfR39BIQBMvwLzrKZFFQbGZ/l9Cy2POTVjOWljK
         bfrQ==
X-Gm-Message-State: AO0yUKW/c6diw619T4yK7HMsqA+IXtbp7D4xp8ilK2+ObKpyHxPMzQcF
	y08h2IkUuxjue7JM0EYbKscZwQ==
X-Google-Smtp-Source: AK7set/Go5uO6Ko/jxC1RRWHo5FHKFy68YfXEpfah8KL+MgdxvhaMrkjjPKYCkUBXnHCDbX3tV62AA==
X-Received: by 2002:ac2:558d:0:b0:4db:3882:8f42 with SMTP id v13-20020ac2558d000000b004db38828f42mr3558231lfg.45.1678122576059;
        Mon, 06 Mar 2023 09:09:36 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id x19-20020a19f613000000b004db1cd5efcesm1692927lfe.241.2023.03.06.09.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 09:09:35 -0800 (PST)
Message-ID: <dfd1d81e-76a0-f8eb-e529-9f8ea1e927b6@linaro.org>
Date: Mon, 6 Mar 2023 18:09:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible
 string
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
 martin.botka@somainline.org, marijn.suijten@somainline.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230306165246.14782-1-they@mint.lgbt>
 <20230306165246.14782-2-they@mint.lgbt>
 <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <4670ddae-6b01-1e5c-b0ed-1f2f498a4f66@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_090939_220954_37CC12D6 
X-CRM114-Status: GOOD (  10.40  )
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

CgpPbiA2LjAzLjIwMjMgMTg6MDEsIEx1eCBBbGlhZ2Egd3JvdGU6Cj4gCj4gT24gMDYvMDMvMjAy
MyAxMzo1MiwgTHV4IEFsaWFnYSB3cm90ZToKPj4gRG9jdW1lbnQgdGhlIGNvbXBhdGlibGUgZm9y
IFVGUyBmb3VuZCBvbiB0aGUgU002MTI1Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdXggQWxpYWdh
IDx0aGV5QG1pbnQubGdidD4KPj4gUmV2aWV3ZWQtYnk6IE1hcnRpbiBCb3RrYSA8bWFydGluLmJv
dGthQHNvbWFpbmxpbmUub3JnPgo+PiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+PiAtLS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHVmcy55YW1sIHwgMiArKwo+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPj4gaW5kZXggYjUxN2Q3NjIxNWUz
Li40MjQyMmYzNDcxYjMgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwKPj4gQEAgLTI5LDYgKzI5LDcgQEAgcHJvcGVy
dGllczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2M4MjgweHAtdWZzaGMKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2RtODQ1LXVmc2hjCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLSBxY29tLHNtNjExNS11ZnNoYwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgIC0g
cWNvbSxzbTYxMjUtdWZzaGMKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc202MzUw
LXVmc2hjCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtODE1MC11ZnNoYwo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTgyNTAtdWZzaGMKPj4gQEAgLTE4NSw2ICsx
ODYsNyBAQCBhbGxPZjoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bToKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gcWNvbSxzbTYxMTUtdWZzaGMKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcWNvbSxzbTYxMjUtdWZzaGMKPj4gwqDCoMKgwqDCoCB0aGVuOgo+PiDCoMKgwqDCoMKgwqDC
oCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzOgo+IEkgaGF2ZSB0byBh
cG9sb2dpemUuIEkgd29ya2VkIG9uIGEgY2hhbmdlbG9nIGZvciB0aGlzIHBhdGNoc2V0IGJ1dCBJ
IHNraXBwZWQgdGhlIHN1YmplY3QgaGVhZGVyLCB0aGVyZWZvcmUgaXQgZGlkbid0IHNlbmQsIGFu
ZCBhcyBJIHJlYWxpemVkIHRoaXMgSSBpbnRlcnJ1cHRlZCB0aGUgcHJvY2VzcywgbGVhdmluZyB0
aGUgcGF0Y2hzZXQgaW5jb21wbGV0ZS4gSSdsbCByZXRyeSBzZW5kaW5nIGl0LCB0aGlzIHRpbWUg
Y29ycmVjdGx5LgpIYXBwZW5zLCBuZXh0IHRpbWUgcmVzZW5kIGl0IHdpdGggYSBSRVNFTkQgcHJl
Zml4LCBlLmcuIFtSRVNFTkQgUEFUQ0ggMS8yXQoKS29ucmFkCj4gCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
