Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A30AC47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 09:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yl1QvV3FUDAjaXVmvRwxyiaq30FBlahw3WAG/CZQWk=; b=caLCd06SXsLSCl
	3dFX+p2dlTjwLFBphQAlHn7yJYGdzf+8izvLpd+mqrI3oMNMEZBKeo2KKD8HXMKs6pZcgXLXwiiQV
	xq5/vQ6/wLiq03ESOCwNYTdk3gHpcYrEGK2w0VvJIG2NFdbC7CCJJzIj0xJFIlZZRGj1Zqnyi3H1i
	/2dZD7rMRWRKvRYYgC49GMVaXeynJeQ693YQUaQpaAUN4A6Ift9DRee7Fl1K04zLMO601R6lrCC6T
	rypxxjyrZ0iZCuJP8EIZWSYM0fdIjSb8ztZuOHJJF10NGMqBeZW4LwWf8/80rTrAIrnW7lPf2KWLF
	I/NzhINEb/KlU+h3E1tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwOl-007etS-0W;
	Thu, 25 Jan 2024 09:51:51 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSwOi-007erC-1M
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 09:51:50 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so8152274e87.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 01:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706176305; x=1706781105; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KTUPFg4ZPrzSVdq+saqKH9Sm8wMicRr4g/EmH7EYmy8=;
        b=hYLX9igg0hTqTSUUbDgaCVa52zTIhmQBH5iMl6srbn11waaDfUTyH7UP5lNpZjdaFM
         xpsAiECAzyQqVvq+O6GDUeuu0GlBQNbOyNKqo5A3FBTn7X2/EC4KfvNuQ69YWtX28csc
         DvBO3KEvmZaWIdlGpMnlrhOTaa6gHAb6lru2zJYFIg/XoQEoZ7C5zQO/F7mO4xnKZ7T0
         0RjNqqs/AetjTaKNELiT8w0MgrUPh6Ae9Y6CBvK07P4l8rZD4Uxr2+xCxdoBlm8CL3tA
         oX4hrKCwXLABy9UXtgqYybntgcX3zEgzKFqV+jYNqcPqcOB32WfEvMebcKEdXYQsHUdO
         VrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176305; x=1706781105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KTUPFg4ZPrzSVdq+saqKH9Sm8wMicRr4g/EmH7EYmy8=;
        b=r62eFH/SzuMZsVsU17zqOIk+fAZqWkznoloXztpHemY48HvM0yZlpHtAHA5xA55pwM
         s83Uc4L1aMIu5KOEMA1Wp644F6fqpn3UmZWD1HqgQ0ELtercO23Y/WNjgB1+c0Dxjca1
         uVFkZnVEXQJnFu3IDlXbOsBDUfAI+5bMjE17wS6N72QOzRFPsw+s+C0calAlKAtyXpTS
         +X4GTL80BeQ7D/AdM1LQEOZqx99O/N6QKuKvQQdOXzbMO72nIwvZlYwa+RppuJxIsTR1
         nHzb5qmrvlzSWXWEeNWeaUHDjyjTBFe1QXRsnfrhiRPFtLw9govS1iA5EZOWFDQZbBqq
         xkcw==
X-Gm-Message-State: AOJu0YzWr/3sZEgu6RntDZ6HuqGXRJWwoVIc4vLVxbqV4fwBUEukByQ2
	3MyamEO7eQBsR2Ld5xM6Qoi1JA/yVk7ib+5R2VSFMIuwT+qZ383h/HhZxuxuPjw=
X-Google-Smtp-Source: AGHT+IHgLf0y3T2aSAw/8Rd6AEWP7U+nisGUAfd6mVfQ410OHvexB/I4j6zZok9prPeL9Mw/33M7lg==
X-Received: by 2002:a05:6512:34cd:b0:510:1b77:62d8 with SMTP id w13-20020a05651234cd00b005101b7762d8mr361538lfr.23.1706176304681;
        Thu, 25 Jan 2024 01:51:44 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w12-20020ac2598c000000b0051007e2a2e7sm713457lfn.231.2024.01.25.01.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:51:44 -0800 (PST)
Message-ID: <aa2d61d5-ada1-485a-aed8-7cd360adf744@linaro.org>
Date: Thu, 25 Jan 2024 10:51:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
Content-Language: en-US
To: neil.armstrong@linaro.org, Qiang Yu <quic_qianyu@quicinc.com>,
 agross@kernel.org, andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_mrana@quicinc.com
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
 <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
 <0a3f486d-0135-454e-9da6-b888e516a39e@quicinc.com>
 <aa445a92-e640-4f1d-969c-20cafefcf44e@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <aa445a92-e640-4f1d-969c-20cafefcf44e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_015148_490695_C05E33F0 
X-CRM114-Status: UNSURE (   9.72  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAxLzI1LzI0IDA4OjUzLCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+IE9u
IDI1LzAxLzIwMjQgMDM6NTksIFFpYW5nIFl1IHdyb3RlOgo+Pgo+PiBPbiAxLzI0LzIwMjQgNDo1
OCBQTSwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4+IE9uIDI4LzEyLzIwMjMg
MDY6NDIsIFFpYW5nIFl1IHdyb3RlOgo+Pj4+IEFsaWduIFBDSWUwL1BDSWUxIFBIWSBzZXR0aW5n
cyB3aXRoIFNNODU1MCBsYXRlc3QgUENJZSBQSFkgSGFyZHdhcmUKPj4+PiBQcm9ncmFtbWluZyBH
dWlkZS4KPj4+Pgo+Pj4+IENhbiBHdW8gKDEpOgo+Pj4+IMKgwqAgcGh5OiBxY29tOiBxbXAtcGNp
ZTogVXBkYXRlIFBDSWUxIFBIWSBzZXR0aW5ncyBmb3IgU004NTUwCj4+Pj4KPj4+PiBRaWFuZyBZ
dSAoMSk6Cj4+Pj4gwqDCoCBwaHk6IHFjb206IHFtcC1wY2llOiBVcGRhdGUgUENJZTAgUEhZIHNl
dHRpbmdzIGZvciBTTTg1NTAKPj4+Pgo+Pj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY2llLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMCArKysrKysrKysrKysr
Ky0tLS0tLQo+Pj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtcGNp
ZS12Ni5owqDCoMKgwqDCoCB8wqAgMiArKwo+Pj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC1wY3MtcGNpZS12Nl8yMC5owqDCoCB8wqAgMiArKwo+Pj4+IMKgIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjZfMjAuaMKgwqDCoMKgwqDCoMKgIHzCoCAx
ICsKPj4+PiDCoCAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4cngtdjZf
MjAuaMKgwqAgfMKgIDIgKysKPj4+PiDCoCA1IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCj4+Pj4KPj4+Cj4+PiAtIE9uIFNNODU1MC1IREs6Cj4+PiAjIGxz
cGNpCj4+PiAwMDAwOjAwOjAwLjAgUENJIGJyaWRnZTogUXVhbGNvbW0gRGV2aWNlIDAxMTMKPj4+
IDAwMDA6MDE6MDAuMCBOZXR3b3JrIGNvbnRyb2xsZXI6IFF1YWxjb21tIERldmljZSAxMTA3IChy
ZXYgMDEpCj4+PiAwMDAxOjAwOjAwLjAgUENJIGJyaWRnZTogUXVhbGNvbW0gRGV2aWNlIDAxMTMK
Pj4+IDAwMDE6MDE6MDAuMCBOb24tVm9sYXRpbGUgbWVtb3J5IGNvbnRyb2xsZXI6IFBoaXNvbiBF
bGVjdHJvbmljcyBDb3Jwb3JhdGlvbiBFMTIgTlZNZSBDb250cm9sbGVyIChyZXYgMDEpCj4+Pgo+
Pj4KPj4+ICMgbHNwY2kgLW52dgo+Pj4gMDAwMDowMDowMC4wIDA2MDQ6IDE3Y2I6MDExMyAocHJv
Zy1pZiAwMCBbTm9ybWFsIGRlY29kZV0pCj4+PiDCoMKgwqDCoMKgwqDCoCBMbmtDYXA6wqDCoMKg
IFBvcnQgIzAsIFNwZWVkIDhHVC9zLCBXaWR0aCB4MiwgQVNQTSBMMHMgTDEsIEV4aXQgTGF0ZW5j
eSBMMHMgPDR1cywgTDEgPDh1cwo+Pj4gwqDCoMKgwqDCoMKgwqAgTG5rU3RhOsKgwqDCoCBTcGVl
ZCA1R1QvcywgV2lkdGggeDIKPj4+IDAwMDE6MDA6MDAuMCAwNjA0OiAxN2NiOjAxMTMgKHByb2ct
aWYgMDAgW05vcm1hbCBkZWNvZGVdKQo+Pj4gwqDCoMKgwqDCoMKgwqAgTG5rQ2FwOsKgwqDCoCBQ
b3J0ICMwLCBTcGVlZCAxNkdUL3MsIFdpZHRoIHgyLCBBU1BNIEwwcyBMMSwgRXhpdCBMYXRlbmN5
IEwwcyA8NHVzLCBMMSA8OHVzCj4+PiDCoMKgwqDCoMKgwqDCoCBMbmtTdGE6wqDCoMKgIFNwZWVk
IDhHVC9zLCBXaWR0aCB4Mgo+Pj4KPj4+IFRlc3RlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwu
YXJtc3Ryb25nQGxpbmFyby5vcmc+ICMgb24gU004NTUwLUhESwo+Pj4KPj4+IC0gT24gU004NTUw
LVFSRDoKPj4+ICMgbHNwY2kKPj4+IDAwOjAwLjAgUENJIGJyaWRnZTogUXVhbGNvbW0gRGV2aWNl
IDAxMTMKPj4+IDAxOjAwLjAgTmV0d29yayBjb250cm9sbGVyOiBRdWFsY29tbSBEZXZpY2UgMTEw
NyAocmV2IDAxKQo+Pj4KPj4+ICMgbHNwY2kgLW52dgo+Pj4gwqDCoMKgwqDCoMKgwqAgTG5rQ2Fw
OsKgwqDCoCBQb3J0ICMwLCBTcGVlZCA4R1QvcywgV2lkdGggeDIsIEFTUE0gTDBzIEwxLCBFeGl0
IExhdGVuY3kgTDBzIDw0dXMsIEwxIDw4dXMKPj4+IMKgwqDCoMKgwqDCoMKgIExua1N0YTrCoMKg
wqAgU3BlZWQgNUdUL3MsIFdpZHRoIHgyCj4+Pgo+Pj4gVGVzdGVkLWJ5OiBOZWlsIEFybXN0cm9u
ZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4gIyBvbiBTTTg1NTAtUVJECj4+Pgo+Pj4gVGhh
bmtzLAo+Pj4gTmVpbAo+Pgo+PiBIaSBOZWlsLAo+Pgo+PiBUaGFua3MgZm9yIHRlc3RpbmcgdGhp
cyBwYXRjaC4gSSB2ZXJpZmllZCBvbiBhaW0zMDAsIGRpZCBub3Qgc2VlIHNwZWVkIGRvd25ncmFk
ZS4gTGV0IG1lIGhhdmUgYSB0cnkgb24gSERLODU1MC4KPiAKPiBJIGhhdmVuJ3Qgc2VlbiBzcGVl
ZCBkb3duZ3JhZGUgZWl0aGVyIG9uIHRoZSBIREs4NTUwCgpJJ20gZ3Vlc3NpbmcgdGhlIDUgR1Qv
cyBsaW5rIGdvZXMgdG8gdGhlIFdpLUZpIGNoaXAsIHdoaWNoIG1heQpiZSBuZWdvdGlhdGluZyBh
IGxvd2VyIFBDSWUgZ2VuIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpLb25yYWQKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
