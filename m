Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAF9C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 14 May 2022 19:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIieK6vapHiityRw9C4yHZe1GKlZZRqXQuvs94eZN/w=; b=Xpf9z7l4qAxxgZ
	zATtiqXeXzzqlIyza5MKk4k4ccAdy0huSnJqg+0mmiRzmD51syQcOyOlNsqVPhzBNJndzFQKKROJV
	GJiZN+A8Vnx3JK4E11VMMOwY+EJDjwvFUnMeKeldxR0fCuK/441dlLD6DQv2fG2UUVIlYooMKqYOD
	4QhTQbDd/Xwct7bp/cs5Su2MUFc1mDq2X/F6+a95fyhZIwSmY58B0tH21esL+fIMtX0FxazFJtNN3
	hqqkcbhnfDJusywBLzRCN3zTV7GGd85ENGlg2NF1bybkfyc8OFWBiu2PBvRCnMQcwp0U542Wd3WUj
	fF+ki1+yepae1w4ji2Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npxeA-002A5i-Fm; Sat, 14 May 2022 19:41:50 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npxe7-002A4k-Av
 for linux-phy@lists.infradead.org; Sat, 14 May 2022 19:41:48 +0000
Received: by mail-lf1-x12b.google.com with SMTP id d15so19761298lfk.5
 for <linux-phy@lists.infradead.org>; Sat, 14 May 2022 12:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=t6bJEDO0j/dRfFq4rPjW4+ykP3n6Msmi35RTgOoZ07M=;
 b=Kl7f6ZAzoxQ4Jd8/+V19vqhkpkPjmEHVoVrK51Kv1LDfYNnBINfKrX6YUx+89iVSjx
 0Kcyr9hxefFJxiH9uBIlQ+2ta82hisNj12PIGV3cHbR1/w26ovilmYOUt8ypxwv3NlnK
 7rgtbKaHc9Pg8u9Vb1vJPocjJuzp1fyfnx9QauxFkXLwNYdyTQOgSUUnUt6CgB87i3D+
 2vqb8TR/qrrGbGRYgNPH3tRTl7crlEA7gLHGfXCI/kF4yCAIZlgT0iSnALmSmbAiZCQi
 o/wXQ6rT542gdyMTiHD8Cyg3DrMI+wT2KBj30BenDrZW3ofC6Vq4qwJIBXRYI6MTCX5I
 oIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=t6bJEDO0j/dRfFq4rPjW4+ykP3n6Msmi35RTgOoZ07M=;
 b=F2Tb1KpgLmWAclsJwO0ETJwvSPV9ArftI2wOFG3TNnER0D6koIjWJDVjWQ8nca6Yhu
 yPACN+BIxkzIJ88tP4VIeYf2ptcoAH4ImEdI8ZlkIu95r+r/lAV7bBnp8XgvZ4d3UpOd
 FX66Qz2joJCwplcMENZMDb6hlsdT5mDzyVGjg1yTu8NaF/WWj4dnQlhexyN4jAtxSVdG
 sqFJfby3CAlmI0dxJHLp+5wy6caP6sDhcP1+kQw4gLimV6evRlcR1u60mqZwre4RQhX7
 X6G+tH9CwrIu5aU1FeIda1fL5ExddkujAQg0hVcsKeUzhHvPFrl9t+IbDPk5qfasWIHN
 1EVA==
X-Gm-Message-State: AOAM531+TtqUs0ZWoW2SsZcxdbrCj0bJXC+zFCWIMrrJRqz8oDKrQ8Ij
 EFecNMfcs5KFrp9HWtpM4k0RzQ==
X-Google-Smtp-Source: ABdhPJxHu3S+WGwVzKJZUxwzhTiHR4uLT/Zh8n+qQPda4WwCCELQ3QGV2iDBNb6lJiozLzyiQW2ksA==
X-Received: by 2002:a05:6512:12c9:b0:473:c33e:a65b with SMTP id
 p9-20020a05651212c900b00473c33ea65bmr7771309lfg.285.1652557304862; 
 Sat, 14 May 2022 12:41:44 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 c2-20020ac25302000000b004778d417c49sm78333lfh.290.2022.05.14.12.41.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 May 2022 12:41:44 -0700 (PDT)
Message-ID: <f8d8be37-3e2f-c1fc-37d6-b1e0bfa875ce@linaro.org>
Date: Sat, 14 May 2022 21:41:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
 <9644d608-4ab9-ed0d-50fb-0016e4331361@quicinc.com>
 <5b32cecf-873a-6367-df87-1b8d45e63cec@linaro.org>
 <972ac516-efac-54d6-febc-1b180ec36d4b@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <972ac516-efac-54d6-febc-1b180ec36d4b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_124147_423623_A5CBEAC8 
X-CRM114-Status: GOOD (  26.98  )
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

T24gMTQvMDUvMjAyMiAwODoyNCwgS3Jpc2huYSBLdXJhcGF0aSBQU1NOViB3cm90ZToKPiAKPiBP
biA1LzEyLzIwMjIgNDowMCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMTIv
MDUvMjAyMiAwNzo1NywgS3Jpc2huYSBLdXJhcGF0aSBQU1NOViB3cm90ZToKPj4+IE9uIDUvMTEv
MjAyMiAxMTo0OSBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxMS8wNS8y
MDIyIDE3OjI2LCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+Pj4+PiBGcm9tOiBTYW5kZWVwIE1h
aGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMuY29tPgo+Pj4+Pgo+Pj4+PiBBZGQgZGV2aWNl
IHRyZWUgYmluZGluZ3MgZm9yIFNOUFMgcGh5IHR1bmluZyBwYXJhbWV0ZXJzLgo+Pj4+Pgo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBTYW5kZWVwIE1haGVzd2FyYW0gPHF1aWNfY19zYW5tQHF1aWNpbmMu
Y29tPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIEt1cmFwYXRpIDxxdWljX2tyaXNrdXJh
QHF1aWNpbmMuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gICAgLi4uL2JpbmRpbmdzL3BoeS9xY29tLHVz
Yi1zbnBzLWZlbXRvLXYyLnlhbWwgICAgICAgfCA4NyArKysrKysrKysrKysrKysrKysrKysrCj4+
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA4NyBpbnNlcnRpb25zKCspCj4+Pj4+Cj4+Pj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sdXNiLXNu
cHMtZmVtdG8tdjIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sCj4+Pj4+IGluZGV4IDFjZTI1MWQuLjcwZWZmZmUg
MTAwNjQ0Cj4+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sCj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx1c2Itc25wcy1mZW10by12Mi55YW1sCj4+Pj4+IEBA
IC01Myw2ICs1Myw5MyBAQCBwcm9wZXJ0aWVzOgo+Pj4+PiAgICAgIHZkZGEzMy1zdXBwbHk6Cj4+
Pj4+ICAgICAgICBkZXNjcmlwdGlvbjogcGhhbmRsZSB0byB0aGUgcmVndWxhdG9yIDMuM1Ygc3Vw
cGx5IG5vZGUuCj4+Pj4+ICAgIAo+Pj4+PiArICBxY29tLGhzLWRpc2Nvbm5lY3QtYnBzOgo+Pj4+
PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL2ludDMyCj4+Pj4+
ICsgICAgZGVzY3JpcHRpb246Cj4+Pj4+ICsgICAgICBUaGlzIGFkanVzdHMgdGhlIHZvbHRhZ2Ug
bGV2ZWwgZm9yIHRoZSB0aHJlc2hvbGQgdXNlZCB0bwo+Pj4+PiArICAgICAgZGV0ZWN0IGEgZGlz
Y29ubmVjdCBldmVudCBhdCB0aGUgaG9zdC4gUG9zc2libGUgdmFsdWVzIGFyZS4KPj4+Pj4gKyAg
ICAgIFRoZSB2YWx1ZXMgZGVmaW5lZCBhcmUgaW4gbXVsdGlwbGVzIG9mIGJhc2lzIHBvaW50cyAo
MWJwID0gMC4wMSUpLgo+Pj4+IFRoaXMgbWVhbnMgdGhlcmUgaXMgc29tZSBtaW5pbXVtIGFuZCBt
YXhpbXVtICgxMDAlKT8KPj4+IEhpIEtyenlzdG9mLAo+Pj4KPj4+IFllcyB0aGVyZSBhcmUgbWF4
IGFuZCBtaW4gZm9yIGVhY2ggcGFyYW1ldGVyIChub3QgbmVjZXNzYXJpbHkgMCUvMTAwJSkKPj4+
Cj4+PiBBcyBhbiBleGFtcGxlIGlmIHdlIHRha2Ugc3F1ZWxjaCBkZXRlY3RvciB0aHJlc2hvbGQs
IHRoZSByZWdpc3RlciB2YWx1ZQo+Pj4gdnMgYWN0dWFsIHBlcmNlbnRhZ2UgY2hhbmdlciBhcyBw
ZXIgZGF0YSBib29rIGlzIGFzIGZvbGxvd3MgOgo+Pj4KPj4+ICUgY2hhbmdlIGluIHZvbHRhZ2XC
oMKgwqAgfMKgwqDCoMKgIGNvcnJlc3BvbmRpbmcgcmVnIHZhbHVlCj4+Pgo+Pj4gICDCoC0yMC45
MCXCoMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqAgfCDCoMKgIDcKPj4+ICAgwqAt
MTUuNjAlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDYKPj4+IC0xMC4zMCXCoMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgIDUKPj4+IC01LjMwJSDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCDCoCA0Cj4+PiAwJcKgIMKgIMKgIMKgIMKgIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAzCj4+PiA1
LjMwJcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IMKgwqAgMgo+Pj4gMTAuNjAlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxCj4+PiAxNS45MCUgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMAo+Pj4KPj4+IEhlcmUgdGhlIG1p
biBhbmQgbWF4IGFyZSAxNS45JSB0byAtMjAuOSUKPj4+Cj4+PiBUaGUgbWluIGFuZCBtYXggZGlm
ZmVyIGZvciBlYWNoIHBhcmFtZXRlciBhbmQgbWlnaHQgbm90IGJlIG5lY2Vzc2FyaWx5Cj4+PiAw
JSBhbmQgMTAwJQo+PiBUaGVuIGl0IHNlZW1zIHBvc3NpYmxlIHRvIGRlZmluZSBtaW5pbXVtIGFu
ZCBtYXhpbXVtIHZhbHVlcyAtIHBsZWFzZSBhZGQKPj4gdGhlbSAoIm1pbmltdW06IHh4eHgiKS4K
Pj4KPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPiAKPiBIaSBLcnp5c3p0b2YsCj4g
Cj4gIMKgU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5LCBtaXNzZWQgdGhpcyBtYWlsLgo+IAo+IEN1
cnJlbnRseSwgdGhlc2UgdmFsdWVzIGhhdmUgYSBmaXhlZCBtYXhpbXVtIGFuZCBtaW5pbXVtLiBC
dXQgaWYgdGhlc2UgCj4gbGltaXRzIGNoYW5nZSBpbiB0aGUKPiAKPiBmdXR1cmUgKHNheSBvbiBh
IHBlciB0YXJnZXQgYmFzaXMpICwgd291bGQgaXQgYmUgYXBwcm9wcmlhdGUgdG8gYWRkIHRoZW0g
Cj4gaGVyZSBpbiBiaW5kaW5ncyBmaWxlID8KClBlciAidGFyZ2V0IiB5b3UgbWVhbiBjb21wYXRp
YmxlPyBUaGVuIHllcywgdGhlIHNhbWUgYXMgY3VzdG9taXppbmcKbnVtYmVyIG9mIGludGVycnVw
dHMsIGNsb2NrcyBldGMuCgo+IAo+IEFsc28gaW4gdGhlIGRyaXZlciBmaWxlIGZvciBzYzcyODAg
dGFyZ2V0LCB3ZSBoYXZlIGFkZGVkIHBhcmFtZXRlciAKPiBtYXBwaW5nIDogKG1hcCBiL3cgcmVn
aXN0ZXIgdmFsdWUKPiAKPiBhbmQgYnBzIHBhc3NlZCBmcm9tIGRldmljZSB0cmVlKS4gRm9yIHNx
dWVsY2ggZGV0ZWN0b3IsIGl0IGlzIGFzIGZvbGxvd3M6Cj4gCj4gK3N0YXRpYyBzdHJ1Y3Qgb3Zl
cnJpZGVfcGFyYW0gc3F1ZWxjaF9kZXRfdGhyZXNob2xkX3NjNzI4MFtdID0gewo+ICsJT1ZFUlJJ
REVfUEFSQU0oLTIwOTAsIDcpLAo+ICsJT1ZFUlJJREVfUEFSQU0oLTE1NjAsIDYpLAo+ICsJT1ZF
UlJJREVfUEFSQU0oLTEwMzAsIDUpLAo+ICsJT1ZFUlJJREVfUEFSQU0oLTUzMCwgNCksCj4gKwlP
VkVSUklERV9QQVJBTSgwLCAzKSwKPiArCU9WRVJSSURFX1BBUkFNKDUzMCwgMiksCj4gKwlPVkVS
UklERV9QQVJBTSgxMDYwLCAxKSwKPiArCU9WRVJSSURFX1BBUkFNKDE1OTAsIDApLAo+ICt9Owo+
IAo+IEFuZCB0aGUgY29kZSBpcyB3cml0dGVuIHN1Y2ggdGhhdCBpZiB3ZSBnaXZlIGEgYnBzIHZh
bHVlIGluIGR0IGdyZWF0ZXIgdGhhbiBtYXggdmFsdWUgaW4KPiB0YWJsZSwgd2Ugd291bGQgYXV0
b21hdGljYWxseSBjaG9vc2UgbWF4IHZhbHVlLiBBbmQgaWYgd2UgcHJvdmlkZSBicHMgdmFsdWUg
bGVzc2VyIHRoYW4KPiBtaW5pbXVtIHZhbHVlLCB3ZSB3b3VsZCBjaG9vc2UgdGhlIG1pbiB2YWx1
ZS4KPiAKPiBTbywgd291bGQgaXQgYmUgYXBwcm9wcmlhdGUgdG8gYWRkIHRoZSBtaW4gYW5kIG1h
eCBpbiBkdC1iaW5kaW5ncyB3aGVuIHRoZXJlIGlzIGEKPiBzbGlnaHQgY2hhbmNlIG9mIHRoZW0g
Y2hhbmdpbmcgaW4gdGhlIGZ1dHVyZSA/CgpUaGUga2VybmVsIGJlaGF2aW9yIHNob3VsZCBub3Qg
bWF0dGVyIGhlcmUsIGJlY2F1c2UgdGhlIGJpbmRpbmdzIGFyZQphYm91dCB0aGUgaGFyZHdhcmUu
IFRoZXJlZm9yZSBpZiBoYXJkd2FyZSBjb21lcyB3aXRoIG1heGltdW0vbWluaW11bQp2YWx1ZXMs
IGl0IHdvdWxkIGJlIGJldHRlciB0byBkb2N1bWVudCB0aGVtIGhlcmUuCgoKQmVzdCByZWdhcmRz
LApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
