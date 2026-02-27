Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7057FD5323
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 09:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s24fD/zhwaU6+RG12tjdw7rPpgXanWE7Zc7IWeQQSKU=; b=DXXrs2UXkvpTKl
	dOZ2jjF4cdJU02klPrEf4Fva4Z1yfrf7zyvAO6D5a+2bmqgznyLYHVU+tZwLD2ERBjuVIwtoG/Ms9
	tqmfY+x0OmEeQ+gZfpf9mBUKxmm3AMtUZ7Qeku5a48Ca7ctY4G+PlaRuXCrWc14HquVmEFqzZHTIk
	4Z7PN9aB+NZg4hVW6e3uJIdPnyaFSS9BL7rUxlO2dkZQfyWPIJlVragD8PEhQQaCgH472ml9BRKgl
	oh2XC0A0ftKxtvj98Udkn4Wk1YiPG5R2qO3tj0ZO63bARXV/dPjPo17eI9vyLISuS0xXAcoOH9pv3
	s5ARE8aRdmC2JYyxIaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvuRy-00000008Al7-1iB9;
	Fri, 27 Feb 2026 09:47:58 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvuRv-00000008AkC-3oZY
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 09:47:57 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-483a2338616so11345815e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 01:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772185674; x=1772790474; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lvnzu0nnoktPCLf+OVvM4xkOpLiznX3KsepjyKiu5SE=;
        b=h+6rfVrN922uBsNby0SuDMj7TaYx4wfhmuYmRR3MXxnZdnWUl/sXXhFfQzw0Irjl6G
         LlCdSxTRabPpCfSwT+mDK7wTfQtXuY+P8k6a9cvWffTiIV43xqUgLjYeVxw5ox1hdnlB
         dWePNAmK2ZW63sRIne4+Kq+KYWgnMYRxs/JjdKCwqyrDcxABf8j2lxyv/ZfSDlYPNeVo
         C5zVFdX0baqy2b3OKYGVldlgz42f8o6bhk6ndn7n2aw9MNhTh1eXslCAM9TBVcgT01h0
         RRJpju6zxfSyo2GMwRtiohzJ4+prkr9buqkqlhEi2DtAQ+OnCBFggAoAJqd6xdRvWnd5
         XZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772185674; x=1772790474;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvnzu0nnoktPCLf+OVvM4xkOpLiznX3KsepjyKiu5SE=;
        b=Er6rEMEFEgd/HM0OSHKrqKbbmPnxyeyEpGo7toLywU+a5+R2gSsXqQ5T90EFvWQhdv
         rKx2JSq5CWj8/dEslALNZtpfH9LG0e6orhgVkZcL20JI8OOWzJIUK+v0O8aSpeczuNbb
         FULcVhj6eIyzgwB/DypMQjfWK2a6r0+fraXY0WQWFEJwtpX66al1kM5qV1JaLNHjxoQW
         qsbRRY1WwHeY048OOK72QC7ywquyVwjpzJWfjVhRiP5XgMWyFEpg0LDQQilvSAgR//9e
         i1dif4r7P7r1ntvGOLr5BK6/+HM1shOA3bBZd0m7mAsbP2wTnJnaC/J9xKYB2/clsUHF
         0Efg==
X-Forwarded-Encrypted: i=1; AJvYcCV86y3Jr5Kj2Xy7KYmjK1rdgm083n71m+Qy7WVcbIvoe9AQJ3mXhs7sr5xbXjS1j8ov3mSU91YXdjk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXcXGJdVn2aX5FSXFDg1NACRC+Q8Vk9L62IvyHiQVK9R2GxR3i
	cM3hnW7TjlJ5SgekgmnBU67ZfhkPITIzZpsJvt7qfVmveNQYvkvNfymJna/jgo8orO4=
X-Gm-Gg: ATEYQzwVflsQ/W2uO0Qe3TD2XkJZ05OYJ0EHPmoCvCq2i10/8/zYaz6P7hpRAS4kwQf
	yKCLE+j7SeskhLfv58CaWEC24iy8FKZxcgbo/wLklgudd6OR7YbqPzD9+JoT6L45tlZ9pVIyus9
	AFRKkwGosyB66Y+qx6c8SVzYJQilZYihv6DxlPGUYVNND5V4Gjoxq3KpBVp3sbouh58GwaqTk42
	jub0bKlfk/c8KXEGitL4vp1/5+/6RvRIcIez7nCXjchJAq84twdz+2hQjs+CmkOS72MV0XwCqxP
	eIDkZl+EWr/Tq2YTjuVTJkCKR+YbYoj1wgc5mYITgQg6QMiMUV8RbLPLD/obx6+XHcp1HMXjcid
	qvOYpPSk6feo/lkBs5t5fp1ITa+0+cZUbBks/TD8Zr+5y8uF4HVssoyk7yHRWbY1hB8ja4OT0O8
	BHUCBeF2//7b43fD5FZ9LsBK74pI8V3BLaZrIaZInT+PwiqKfh/sKX2mJaDD3hrG2+IRl6zJUo7
	7s=
X-Received: by 2002:a05:600c:46c4:b0:483:b505:9db4 with SMTP id 5b1f17b1804b1-483c9c0f1d1mr32779065e9.31.1772185673668;
        Fri, 27 Feb 2026 01:47:53 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b770c2sm92861155e9.10.2026.02.27.01.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 01:47:53 -0800 (PST)
Message-ID: <44b01d94-427c-49d6-bac8-a5d14141b24f@linaro.org>
Date: Fri, 27 Feb 2026 09:47:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <20260227-overjoyed-spiritual-saluki-7561c2@quoll>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260227-overjoyed-spiritual-saluki-7561c2@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_014755_981664_73DA0713 
X-CRM114-Status: GOOD (  18.33  )
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

T24gMjcvMDIvMjAyNiAwOTo0MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBUaHUs
IEZlYiAyNiwgMjAyNiBhdCAxMjozNDoyNVBNICswMDAwLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3Rl
Ogo+PiBBZGQgYSBiYXNlIHNjaGVtYSBpbml0aWFsbHkgY29tcGF0aWJsZSB3aXRoIHgxZTgwMTAw
IHRvIGRlc2NyaWJlIE1JUEkgQ1NJMgo+PiBQSFkgZGV2aWNlcy4KPj4KPj4gVGhlIGhhcmR3YXJl
IGNhbiBzdXBwb3J0IGJvdGggQy1QSFkgYW5kIEQtUEhZIG1vZGVzLiBUaGUgQ1NJUEhZIGRldmlj
ZXMKPj4gaGF2ZSB0aGVpciBvd24gcGlub3V0cyBvbiB0aGUgU29DIGFzIHdlbGwgYXMgdGhlaXIg
b3duIGluZGl2aWR1YWwgdm9sdGFnZQo+PiByYWlscy4KPj4KPj4gVGhlIG5lZWQgdG8gbW9kZWwg
dm9sdGFnZSByYWlscyBvbiBhIHBlci1QSFkgYmFzaXMgbGVhZHMgdXMgdG8gZGVmaW5lCj4+IENT
SVBIWSBkZXZpY2VzIGFzIGluZGl2aWR1YWwgbm9kZXMuCj4+Cj4+IFR3byBuaWNlIG91dGNvbWVz
IGluIHRlcm1zIG9mIHNjaGVtYSBhbmQgRFQgYXJpc2UgZnJvbSB0aGlzIGNoYW5nZS4KPj4KPj4g
MS4gVGhlIGFiaWxpdHkgdG8gZGVmaW5lIG9uIGEgcGVyLVBIWSBiYXNpcyB2b2x0YWdlIHJhaWxz
Lgo+PiAyLiBUaGUgYWJpbGl0eSB0byByZXF1aXJlIHRob3NlIHZvbHRhZ2UuCj4+Cj4+IFdlIGhh
dmUgaGFkIGEgY29tcGxldGUgYm9kZ2UgdXBzdHJlYW0gZm9yIHRoaXMgd2hlcmUgYSBzaW5nbGUg
c2V0IG9mCj4+IHZvbHRhZ2UgcmFpbCBmb3IgYWxsIENTSVBIWXMgaGFzIGJlZW4gYnVyaWVkIGlu
c2lkZSBvZiBDQU1TUy4KPj4KPj4gTXVjaCBsaWtlIHRoZSBJMkMgYnVzIHdoaWNoIGlzIGRlZGlj
YXRlZCB0byBDYW1lcmEgc2Vuc29ycyAtIHRoZSBDQ0kgYnVzIGluCj4+IENBTVNTIHBhcmxhbmNl
LCB0aGUgQ1NJUEhZIGRldmljZXMgc2hvdWxkIGJlIGluZGl2aWR1YWxseSBtb2RlbGxlZC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFy
by5vcmc+Cj4+IC0tLQo+PiAgIC4uLi9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBo
eS55YW1sICAgICAgIHwgMTE0ICsrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAxMTQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1waHku
eWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAwLi5jOTM3
ZDI2Y2NiZGE5Cj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPj4gQEAgLTAsMCAr
MSwxMTQgQEAKPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0y
LUNsYXVzZSkKPj4gKyVZQU1MIDEuMgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwjCj4+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4gKwo+PiAr
dGl0bGU6IFF1YWxjb21tIENTSTIgUEhZCj4gCj4gUXVhbGNvbW0gU29DIENTSTIgUEhZCj4gCj4g
Cj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIEJyeWFuIE8nRG9ub2dodWUgPGJvZEBrZXJu
ZWwub3JnPgo+PiArCj4+ICtkZXNjcmlwdGlvbjoKPj4gKyAgUXVhbGNvbW0gTUlQSSBDU0kyIEMt
UEhZL0QtUEhZIGNvbWJpbmF0aW9uIFBIWS4gQ29ubmVjdHMgTUlQSSBDU0kyIHNlbnNvcnMKPj4g
KyAgdG8gUXVhbGNvbW0ncyBDYW1lcmEgQ1NJIERlY29kZXIuIFRoZSBQSFkgc3VwcG9ydHMgYm90
aCBDLVBIWSBhbmQgRC1QSFkKPj4gKyAgbW9kZXMuCj4gCj4gU28ganVzdCB0byBiZSBjbGVhcjog
dGhpcyBpcyBub3QgTUlQSSBDU0ksIGJ1dCBvbmx5IHRoZSBDU0kgUEhZPyBUaGVyZQo+IGFyZSBu
byBwb3J0cyBoZXJlLCB3aGljaCBzZWVtcyBmaW5lIGZvciB0aGUgcGh5IGFuZCB3aWxsIGJlIGlu
IHRoZSBNSVBJCj4gQ1NJIGJsb2NrPwoKQ0FNU1MgcG9ydHMgbWFwIHRvIHRoZSBDU0lEIC0gQ1NJ
IERlY29kZXIgeWVzLgoKPiAKPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToK
Pj4gKyAgICBjb25zdDogcWNvbSx4MWU4MDEwMC1jc2kyLXBoeQo+PiArCj4+ICsgIHJlZzoKPj4g
KyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgICIjcGh5LWNlbGxzIjoKPj4gKyAgICBjb25zdDog
MQo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtYXhJdGVtczogNAo+PiArCj4+ICsgIGNsb2Nr
LW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogY3NpcGh5Cj4gCj4gcHJv
YmFibHk6IGNvcmUgb3IgaWZhY2UKPiAKPj4gKyAgICAgIC0gY29uc3Q6IGNzaXBoeV90aW1lcgo+
IAo+IHRpbWVyCj4gCj4+ICsgICAgICAtIGNvbnN0OiBjYW1ub2NfYXhpCj4gCj4gYXhpIG9yIG5v
Ywo+IAo+PiArICAgICAgLSBjb25zdDogY3Bhc19haGIKPiAKPiBidXMsIGFoYiBvciBjcGFzLCBk
ZXBlbmRpbmcgd2hldGhlciB0aGlzIGlzIG9ubHkgb25lIGFoYiBvciB0aGlzIGlzIGJ1cyBvZgo+
IHNvbWUgY3BhcyBzdWJibG9jawo+IAo+IFNlZSBhbHNvOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNjAxMTUtc202MTUwX2V2ay12My0yLTgxNTI2ZGQxNTU0M0Bvc3MucXVhbGNvbW0u
Y29tLwo+IAo+IAo+PiArCj4+ICsgIGludGVycnVwdHM6Cj4+ICsgICAgbWF4SXRlbXM6IDEKPj4g
Kwo+PiArICBvcGVyYXRpbmctcG9pbnRzLXYyOgo+IAo+IEp1c3QgdHJ1ZS4gSXQgaXMgbm90IGFu
IGFycmF5LgoKTE9MIEkgYXNrZWQgYSBjaGF0Ym90IHRvIHJldmlldyBteSBzdWJtaXNzaW9uIGFu
ZCBpdCB0b2xkIG1lIHRvIGNoYW5nZSAKdGhpcyBmcm9tIHRydWUgdG8gYSBsaXN0LgoK4oKsOTAg
c3Vic2NyaXB0aW9uIHdlbGwgc3BlbnQuLi4KClRoYW5rcyBmb3IgcmV2aWV3LgoKLS0tCmJvZAoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
