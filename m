Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37DECA0FE9
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 10:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TazTNxKoB2iVlflpJdBwO+zrZxdgFpp5BzQS9QsjYqI=; b=PE+5q41c5DKPil
	LCpM2swFj7rXDMqxSG/wf1utwGReYW/0gRxsvGVYVWm0Y2AoDda3zlZa08TyhYOp3fFBW9bCniZmG
	da18aRNLE68ZbS9UQC4n+PnD5vXAXXjhGkKrrD2HvLWthPdx1ODVzN68dFHYRW/N/JmvB9o5CiNdg
	fP7i/ZHzbWPilwjCAy6dlqf4fzCo+phJPpk8OL/zRhAnYm12Zm3tsRpzjtTH5hD05HIwr+qf77Jue
	L/g7p++dLwwlKgC9KWc+DHUz1dO1ut7wyRGewqK1oZFZ8+n2jSM2wWQZ3TL4i7UfYUi7+KXsfSc1n
	3kK5KvHuEN+qvM/cunMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uplof-00000004fHk-24TA;
	Sat, 23 Aug 2025 10:49:45 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphfG-00000003vmz-2Wlz
	for linux-phy@lists.infradead.org;
	Sat, 23 Aug 2025 06:23:48 +0000
X-QQ-mid: zesmtpsz9t1755930178tc48283da
X-QQ-Originating-IP: x7xbIcyyCo1zpsoslknfihpVyI0pGLbFhwMzREaCDhM=
Received: from [127.0.0.1] ( [183.15.207.239])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 23 Aug 2025 14:22:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7341857350164985269
Message-ID: <8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com>
Date: Sat, 23 Aug 2025 14:22:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
 <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
 <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
From: Xilin Wu <sophon@radxa.com>
Content-Language: en-US
In-Reply-To: <018751b8-8b9c-4966-94e2-f3ec8625f87d@linaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NcJjCMiwxJCEmHIE+6tsCg7Er+yYnK/Ax17qDLGANx3xGkz1K5U7qomB
	cLBC+o6p5yRIvtKObXHvYK8dF6sReKOywUMxJ05BJPVAL9Z8tesPXTR/+9tIKlYM94Kd6If
	CFR+rsvbvnFNLQl8NwmZxxgtbRnAQCfzTL/SxmF6wtSI2I1MBO91+zVl75wFacknBypH4sE
	54g/k65SfFKxBpUvRTfxriJulbiZCzac8PewxydKHK9m+8FvV8W9nydw5nW/YhoF231tlQV
	IAQkvkIUana748YyxDPDAhBiLH6yU0iRd3EIkmmuuFxMSulaiy6hwpDJbaMTKGJMZzvX54r
	JyuSn/P60R235926k4u6SpYQ13r6Q+uS1qmE9F7SrG7WZCQrqdK3QnTNEErVJSb0RCLvs/E
	yERu0REI2+K2cikPzoHcK4+tQedjzZXJ8KaaP1D0Pp5hMkuoWMYv0YiQUechGeF8EqJ6Hpv
	XUSUcJUJLUOb4xF2MLlImUCbrE0mltGgasT8vJXUpMy9KAWMf4t8RpmfIpzzBAOiWRxxig1
	HRKKosBj7jl6lSPDCOQB4Una4mcgrkUWSXDg+VFMqS67NjcF2Qnu1crBqwP3yoGoz0Au+Jy
	mEs+GuoS+fpw95ouxchwdAHbxXfW6YU5Xli8E4/mDfHo6yrLIGonLC2ZK6DXOYm8dPZV0IG
	rOIWqibuLBsuAdkQmto3V19YzVe21YZwMWaFoznkSH/x0HeG/Y9jvoX0MFvfG3JLG2mt6zl
	/MWrdRy+WWz2cY9hiQE83ctLH8dlsqv/3MOyFbm+KXgJOEOtfGo2wE/D476B67sKDP4bDS9
	uMcP82futUSHBMA9BDALjBOyLhDe5cWzpeC11IPFpiJ0G0a4kZmPbQo+whRlSsc2yJVIarX
	EhWoKAO2WRINvv5iw7bz5uh8PK+Vl4stZQIiQIeikJjrNgYTpReEIYKuBfKBJzcAd8QtA+J
	GeKZYgxab3B1A1Qh9eWmPvpH4ir3JgIjA8r6EfIo+2rn0yiGV2u+3MF+vkfrbdfRSf+iZ7N
	qaGTiUKQ==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_232347_182926_3609749F 
X-CRM114-Status: GOOD (  20.62  )
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

T24gMjAyNS84LzIyIDE5OjAyOjIxLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAyMi8wOC8y
MDI1IDEyOjU3LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBPbiBUaHUsIEF1ZyAyMSwgMjAy
NSBhdCAwMzo1MzoyNlBNICswMjAwLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IFRoZSBRTVAg
VVNCMy9EUCBDb21ibyBQSFkgaG9zdHMgYW4gVVNCMyBwaHkgYW5kIGEgRFAgUEhZIG9uIHRvcAo+
Pj4gb2YgYSBjb21ibyBnbHVlIHRvIHJvdXRlIGVpdGhlciBsYW5lcyB0byB0aGUgNCBzaGFyZWQg
cGh5c2ljYWwgbGFuZXMuCj4+Pgo+Pj4gVGhlIHJvdXRpbmcgb2YgdGhlIGxhbmVzIGNhbiBiZToK
Pj4+IC0gMiBEUCArIDIgVVNCMwo+Pj4gLSA0IERQCj4+PiAtIDIgVVNCMwo+Pj4KPj4+IEFuZCB0
aGUgbGF5b3V0IG9mIHRoZSBsYW5lcyBjYW4gYmUgc3dwcGVkIGRlcGVuZGluZyBvZiBhbgo+Pj4g
ZXZlbnR1YWwgVVNCLUMgY29ubmVjdG9yIG9yaWVudGF0aW9uLgo+Pj4KPj4+IE5ldmVydGhlbGVz
cyB0aG9zZSBRTVAgQ29tYnkgUEhZIGNhbiBiZSBzdGF0aWNhbGx5IHVzZWQgdG8KPj4+IGRyaXZl
IGEgRGlzcGxheVBvcnQgY29ubmVjdG9yLCBEUC0+SERNSSBicmlkZ2UsIFVTQjMgQSBDb25uZWN0
b3IuLi4KPj4+Cj4+PiBCdXQgaWYgYSA0bGFuZXMgRFAtPkhETUkgYnJpZGdlIGlzIGRpcmVjdGx5
IGNvbm5lY3RlZCB0byB0aGUKPj4+IFFNUCBDb21ieSBQSFkgbGFuZXMsIGluIHRoZSBkZWZhdWx0
IHJvdXRpbmcgMiBvciB0aGUgNCBsYW5lcyB3b3VsZAo+Pj4gcHJvYmJhbHkgYmUgVVNCMywgbWFr
aW5nIHRoZSBEUC0+SERNSSBicmlkZ2Ugbm9uIGZ1bmN0aW9uYWwuCj4+Pgo+Pj4gQWRkIGEgcHJv
cGVydHkgdG8gaGludCBpbiB3aGljaCBsYXlvdXQgbW9kZSB0aGUgUU1QIENvbWJ5IFBIWQo+Pj4g
c2hvdWxkIGJlIGFzIHN0YXJ0dXAuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTmVpbCBBcm1zdHJv
bmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4+PiAtLS0KPj4+IMKgIC4uLi9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkueWFtbMKgwqDCoMKgwqDCoMKgwqAg
fCAxMyArKyAKPj4+ICsrKysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLSAKPj4+IHVzYjQzZHAtcGh5LnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5LyAKPj4+IHFjb20sc2M4MjgweHAtcW1w
LXVzYjQzZHAtcGh5LnlhbWwKPj4+IGluZGV4IAo+Pj4gYzhiYzUxMmRmMDhiNTY5NGM4NTk5ZjQ3
NWRlNzg2NzlhNDQzODQ0OS4uMTI5NDc1YTFkOTUyNzczM2U0M2RlZDVhMzhhYWQ3NjZmOTgxMGZl
NyAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYzgyODB4cC1xbXAtIAo+Pj4gdXNiNDNkcC1waHkueWFtbAo+Pj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC0gCj4+PiB1
c2I0M2RwLXBoeS55YW1sCj4+PiBAQCAtNzYsNiArNzYsMTkgQEAgcHJvcGVydGllczoKPj4+IMKg
wqDCoCBtb2RlLXN3aXRjaDogdHJ1ZQo+Pj4gwqDCoMKgIG9yaWVudGF0aW9uLXN3aXRjaDogdHJ1
ZQo+Pj4gK8KgIHFjb20sY29tYm8taW5pdGlhbC1tb2RlOgo+Pj4gK8KgwqDCoCBkZXNjcmlwdGlv
bjoKPj4+ICvCoMKgwqDCoMKgIERlc2NyaWJlIHRoZSBpbml0aWFsIG1vZGUgb2YgdGhlIENvbWJv
IFBIWSBjb25maWd1cmF0aW9uLgo+Pj4gK8KgwqDCoMKgwqAgVGhlIENvbWJvIFBIWSBpcyBhIHdy
YXBwZXIgb24gdG9wIG9mIGEgRFAgUEhZIGFuZCBhbiBVU0IzIFBIWSwKPj4+ICvCoMKgwqDCoMKg
IHNoYXJpbmcgdGhlIHNhbWUgU3VwZXJTcGVlZCBsYW5lcyB3aXRoIGVpdGhlciBEaXNwbGF5UG9y
dCBvdmVyCj4+PiArwqDCoMKgwqDCoCB0aGUgNCBsYW5lcyAoZHApLCBVU0IzIG9uIGEgcGFpciBv
ZiBsYW5lcyAodXNiMykgb3IgYm90aAo+Pj4gK8KgwqDCoMKgwqAgdGVjaG5vbG9naWVzIGluIGEg
MisyIGNvbmZpZ3VyYXRpb24gKHVzYjMrZHApIGFzIGRlZmF1bHQuCj4+Cj4+IFNQZWNpZnlpbmcg
dGhpcyBhcyBhbiBpbml0aWFsIG1vZGUgbWVhbnMgdGhhdCBpdCBjYW4gYmUgc3dpdGNoZWQgbGF0
ZXIuCj4+IFNob3VsZCB3ZSBnZW5lcmFsaXplIHRoaXMgYW5kIGRlc3JpYmUgaXQgYXMgYnVzLXR5
cGUgKGZyb20KPj4gdmlkZW8taW50ZXJmYWNlcy55YW1sKSBhbmQgYWxsb3cgaXQgdG8gYmUgcHJl
c2VudCBvbmx5IGlmIHRoZXJlIGlzIG5vCj4+IG1vZGUtc3dpdGNoIHByb3BlcnR5Pwo+IAo+IEkg
d2FzIG5vdCBzdXJlIGFib3V0IHRoYXQsIGFuZCB5ZXMgd2Ugc2hvdWxkIGRvIHRoYXQgaW5zdGVh
ZCBidXQgSSdtIG5vdAo+IHN1cmUgYWJvdXQgaG93Lgo+IAo+IGJ1cy10eXBlIHNvdW5kcyBncmVh
dCwgYnV0IHRoZSBudW1iZXJpbmcgZG9lc24ndCBtYXRjaCBzbyBJIHdhcyB0aGlua2luZyAKPiBp
bnN0ZWFkCj4gc29tZXRoaW5nIGxpa2UgcGh5LXR5cGUgd2l0aCBhIHN0cmluZyBvciB1c2UgdGhl
IG51bWJlcnMgZnJvbSBpbmNsdWRlLyAKPiBkdC1iaW5kaW5ncy9waHkvcGh5LmgKPiAKPiBUaGUg
dGhpbmcgaXMsIGRvIHdlIHdhbnQgdG8ga2VlcCB0aGUgZHVhbCBkcCt1c2IzIGFzIHN0YXRpYyA/
IEkgdGhpbmsgCj4gaXQncyB2ZXJ5IHBvc3NpYmxlCj4gYSBib2FyZCB3b3VsZCBjb25uZWN0IHRo
ZSBjb21ibyBwaHkgdG8gYW4gVVNCMyBBIGNvbm5lY3RvciBhbmQgYSAybGFuZXMgCj4gRGlzcGxh
eVBvcnQgY29ubmVjdG9yLgoKWWVzLCBvdXIgYm9hcmQgKFJhZHhhIERyYWdvbiBRNkEpIGlzIHVz
aW5nIHN1Y2ggZGVzaWduLCBidXQgd2l0aCB1c2IzIAphbmQgZHAgbGFuZXMgc3dhcHBlZC4gWzFd
IEkgdGhpbmsgdGhpcyBwYXRjaCBzZXJpZXMgY291bGQgYmUgZXh0ZW5kZWQgdG8gCmhhbmRsZSBz
dWNoIGNvbmZpZ3VyYXRpb24uCgpDdXJyZW50bHkgSSBqdXN0IGNoYW5nZSB0aGUgZGVmYXVsdCBv
cmllbnRhdGlvbiB0byByZXZlcnNlIGluIApxbXBfY29tYm9fcHJvYmUuIFsyXSBJdCB3b3JrcyBm
bGF3bGVzc2x5LiBCdXQgb2YgY291cnNlLCBpdCdzIG5vdCBhbiAKdXBzdHJlYW1hYmxlIHNvbHV0
aW9uIDopCgpGV0lXLCBSb2NrY2hpcCB1c2JkcCBwaHkgYmluZGluZyBbM10gaGFzIGEgcHJvcGVy
dHkgY2FsbGVkIApgcm9ja2NoaXAsZHAtbGFuZS1tdXhgIHRvIHN1cHBvcnQgc3VjaCBjb25maWd1
cmF0aW9uLgoKWzFdIApodHRwczovL2RsLnJhZHhhLmNvbS9xNmEvaHcvUkFEWEElMjBEcmFnb24l
MjBRNkElMjBWMS4yMCUyMFNjaGVtYXRpYyUyMDIwMjUwNjIxLnBkZgoKWzJdIApodHRwczovL2dp
dGh1Yi5jb20vc3Ryb25ndHovbGludXgtbmV4dC9jb21taXQvOTI4Y2QxNjZjZTgxYWNhN2Y4ZTA1
MWM3MmVjY2JkODRhZDg5NmQ5OAoKWzNdIApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtdXNiZHAueWFtbCNuNTMKCj4gCj4g
TmVpbAo+IAo+Pgo+Pgo+Pj4gK8KgwqDCoCBkZWZhdWx0OiB1c2IzK2RwCj4+PiArwqDCoMKgIGVu
dW06Cj4+PiArwqDCoMKgwqDCoCAtIHVzYjMrZHAKPj4+ICvCoMKgwqDCoMKgIC0gdXNiMwo+Pj4g
K8KgwqDCoMKgwqAgLSBkcAo+Pj4gKwo+Pj4gwqDCoMKgIHBvcnRzOgo+Pj4gwqDCoMKgwqDCoCAk
cmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCj4+PiDCoMKgwqDCoMKg
IHByb3BlcnRpZXM6Cj4+Pgo+Pj4gLS0gCj4+PiAyLjM0LjEKPj4+Cj4+Cj4gCgoKLS0gCkJlc3Qg
cmVnYXJkcywKWGlsaW4gV3UgPHNvcGhvbkByYWR4YS5jb20+CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
