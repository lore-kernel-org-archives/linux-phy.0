Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6CFCC0218D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jan 2025 18:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tK1zuPZbLDAuzaAEfIvzZ038Awb3Fhob3oV88+Z0jN0=; b=rKvH+ZjnXnt6Kx
	JnLfkziGySBsqelwDzeOqXWzNxIKcITxxA+f52rpjGogOonUmeLsCUK5xNvNyW92+J0E3ZYdc0CWV
	GlU6C5ILYMukbVzF187TXGhiiaoKNzMN/oeCVe/BZwF0BVQpxkvtLWqtc2f7BIMd7dm7zTBGKmWak
	Z6Nto9E59sqri0vLc2dena1BWozYIspwbGUd/X3DXwgwK3MO+mUGyYLY1zWv20LTvDZxpi52Q0Wro
	iKnGomVtxi+S/e9UlHMIm9rgF/T+PJXt+Ft/r56WoLGVjK2yp49NwIqnvdEXxTYeK+HyHDIs+SlLr
	dyDpkNeqZVzYFpz8iiOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdCWE-00000007ZwY-3P70;
	Wed, 29 Jan 2025 18:10:30 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdCW8-00000007ZvV-1yDz
	for linux-phy@lists.infradead.org;
	Wed, 29 Jan 2025 18:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oldschoolsolutions.biz; s=s1-ionos; t=1738174203; x=1738779003;
	i=jens.glathe@oldschoolsolutions.biz;
	bh=0gH4fty1iZLIvHJirTG78ZCFfaqlvNXj5sdZpZQlg7Q=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=UPQeY7k/+i15z5WYoVjxYADFcT9h4llHSrRGTt3wzITZNGDA+zO2ursUO1rhfwB2
	 soXz6WJNDTHyGq14f22nqLCLhZD5/MaI35NbtoTEAHutQkakXCEuxrvloBVXA8mbp
	 6szvL2282pVVCUWUsQEduUshF8oN0gHw0Z49Ga1I1EDO4hmu/KLUqiakW2WkCNeER
	 BAymj6um/ruBZ67D5EEh20ZEdVuZslDSYRagqDvPAaCu7zoJkxCceYIIJNMbB1Jag
	 cYSdgaFaoBds27qfmtnqRjlUy1NNOAEdvA6jWXDXRmf1rJP6Ko2h/MEGiTo5y0oBI
	 x1gwfAkMI0P8e9hDUw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.0.152] ([62.226.41.231]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MIdaF-1tixGI0eZR-006Tag; Wed, 29 Jan 2025 19:10:03 +0100
Message-ID: <044ce59c-0e88-4af0-a1c4-85e5d845fc04@oldschoolsolutions.biz>
Date: Wed, 29 Jan 2025 19:10:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] X1P42100 DT and PCIe PHY bits
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
Content-Language: en-US
From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
In-Reply-To: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
X-Provags-ID: V03:K1:rgS6R69+EMZL6buCYSYarAw9vHwG1EFkx8Mhk7T/U3FkPpv/fzc
 8qmgijp2hnWTkMPFrZBXf+iIqnXtK+xp9m8Bjv0S7gs93PuoUrVtcvo6hB5/s+2NFOOc/vR
 vuJ9PsiVgQtsNoFL7UVkOV8vNHd2wBURfQA0blb0k3k8gIv4DhFbev8vImSgumvP6yyYQph
 H7s80zEyT8LhH2TH5aX5w==
UI-OutboundReport: notjunk:1;M01:P0:OvsIYLMQuZg=;tMcbzYeFgKIQxJjLWn+8RXX3qjr
 spyXhKax0GKN1gsZXCWNYe3vcWhV6VfqcRsvepDGVZU6no1WoK9snvsht1b4+HZ7Buhm74X7z
 1CThnypK/QcR7dga0xMpPRZrm8jWAk2ZPy9jfnfr1LcDo1rl59pf8T32mY6mvV1ucnq1Rgvts
 tBz1OmWLy35suheqTZja4GsjX7QDzPcVmXJlP9ZV3xkcT3aCGqDCMMbEw/6rX+yE4CZRMVu5I
 /HSQ4dMXnaQMMVmYfkLVToFNjBc/cVWGkDyC+TLrBZbND6YhNPm/8p0OyIQF3ArsWNfJxmdgO
 IO5oK50RGfA0YC7Azm2OnPuH6w4VoyMrE52vCEPmwabo5q/eKq/MPwJjJgJcnfqHaGRmcQIIz
 c7Lj5q1ps2jOcy70jTyOKO/fpO8KJlb0Rbve3Q95G3h8wfWC0Xcc7IXqzNZokhbZmaajNg4MX
 Jzz4ksbh5QgmHAMT514pN1rmeekCp5DtJ5C769FJAwYGC+vTsGIwOwCHtvk02xK7wN/Yt8tMv
 HC+iqkvx3MqkcmgkrAQKxKD3MZmfCjXSYMq5fJMN29S3oZ8PgcN48gCiD0bAn4QGidHqDvQJX
 YCGQ+ZCif3Zc5e9nCcS65K6JlN9WMCY/WXElR11Q+jp6G+TIhTQ3HuU+UCcILsrQGMpRkfiYw
 iokHENdkNuc1tU1TlLj8RPgsXxrAuYOncePB4wHpoOlruVAhlwikzQjaJD39BY2m+uViPt1jK
 YCSLHnL3WF5USJBRE/Xj7lSNlnY1nEHvtWG82R1/KVq4bfoNxZVvby1UkaJYxut2dVrg8ukS9
 Ds4sfxY9XBAunGZoGQcDH57/shDSM0F89owI24+Hij4IiwV90j13H0gcs2I8ZCVxfOJ7Y4Ndj
 gq/vPVHldigxaqgPWZKoHE9YMA4P4RHhWAN0QQev+5UhSxbR963AoOgDONqyecyCQUexIqAj0
 wIjdvlwGk0wHKQwqdFZC5fPMhqCeLkIMoIzcQc1TnUwTJVTa+wtxkSucAvZvOsMQy3hjCwqWI
 7S5VDppJ4DREya4I8j7Ye32LHrrabSbUmluca9ZpJ91WLQLRn1xqhoS0TQQS5A/030Lf4oVgC
 SmUdLtS1tWamSzF9G+AJawyskAokC9QfGYtpwIA3CXOBrsbM7ORgQXh36iBszM22bphmCU58t
 INQw8eIivAmhcnrBAn5xtBh8vmrateD3NFIZegsw/xA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_101024_958339_7E304F76 
X-CRM114-Status: GOOD (  12.35  )
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

T24gMjUuMDEuMjUgMDQ6MzEsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gWDFQNDIxMDAgaXMgYShu
IGluZGlyZWN0KSBkZXJpdmF0aXZlIG9mIFgxRTgwMTAwIC0gdGhlIHNpbGljb24gaXMKPiBhY3R1
YWxseSBkaWZmZXJlbnQgYW5kIGl0J3Mgbm90IGEgZnVzZWQgZG93biBwYXJ0Lgo+Cj4gSW50cm9k
dWNlIHRoZSBEVFMgYml0cyByZXF1aXJlZCB0byBzdXBwb3J0IGl0IGJ5IG1vc3RseSByZXVzaW5n
IHRoZQo+IFgxRSBTb0MgYW5kIENSRCBEVFNJcy4gVGhlIG1vc3Qgbm90YWJsZSBkaWZmZXJlbmNl
cyBmcm9tIG91ciBzb2Z0d2FyZQo+IFBvViBhcmUgYSBkaWZmZXJlbnQgR1BVIChzdXBwb3J0IGZv
ciB3aGljaCB3aWxsIGJlIGFkZGVkIGxhdGVyKSwgNAo+IGxlc3MgQ1BVcyBhbmQgc29tZSBudWFu
Y2VzIGluIHRoZSBQQ0llIGhhcmR3YXJlLgo+Cj4gVGhpcyBzZXJpZXMgdmVyeSBzdHJpY3RseSBk
ZXBlbmRzIG9uIHRoZSBOT0NTUiBQQ0llIFBIWSByZXNldCBwYXRjaGVzLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IC0t
LQo+IEtvbnJhZCBEeWJjaW8gKDYpOgo+ICAgICAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHFt
cC1wY2llOiBBZGQgWDFQNDIxMDAgUENJZSBHZW40eDQgUEhZCj4gICAgICAgIGR0LWJpbmRpbmdz
OiBwaHk6IHFjb20scW1wLXBjaWU6IERyb3AgcmVzZXQgbnVtYmVyIGNvbnN0cmFpbnRzCj4gICAg
ICAgIHBoeTogcWNvbTogcW1wLXBjaWU6IEFkZCBYMVA0MjEwMCBHZW40eDQgUEhZCj4gICAgICAg
IGFybTY0OiBkdHM6IHFjb206IHgxZTgwMTAwOiBXaXJlIHVwIFBDSWUgUEhZIE5PQ1NSIHJlc2V0
cwo+ICAgICAgICBhcm02NDogZHRzOiBxY29tOiBDb21tb25pemUgWDEgQ1JEIERUU0kKPiAgICAg
ICAgYXJtNjQ6IGR0czogcWNvbTogQWRkIFgxUDQyMTAwIFNvQyBhbmQgQ1JECj4KPiAgIC4uLi9i
aW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCAgIHwgICAyNiArLQo+
ICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAg
ICAxICsKPiAgIC4uLi9kdHMvcWNvbS97eDFlODAxMDAtY3JkLmR0cyA9PiB4MS1jcmQuZHRzaX0g
ICAgIHwgICAgNyAtCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlODAxMDAtY3JkLmR0
cyAgICAgICAgICB8IDEyNzAgKy0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS94MWU4MDEwMC1wbWljcy5kdHNpICAgICAgIHwgICAgMiArLQo+ICAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3gxZTgwMTAwLmR0c2kgICAgICAgICAgICAgfCAgIDQ0ICstCj4g
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFwNDIxMDAtY3JkLmR0cyAgICAgICAgICB8ICAg
MTcgKwo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxcDQyMTAwLmR0c2kgICAgICAgICAg
ICAgfCAgIDgxICsrCj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5j
ICAgICAgICAgICB8ICAgMTggKwo+ICAgOSBmaWxlcyBjaGFuZ2VkLCAxNDggaW5zZXJ0aW9ucygr
KSwgMTMxOCBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogZDdkZmRlYzcyZmIzMjYy
OWQxYWZmYzMyZmYzN2E2NmE3ZmQxZmI1Mwo+IGNoYW5nZS1pZDogMjAyNTAxMjUtdG9waWMteDFw
NF9kdHMtM2I5NTA5YmNlM2EzCj4gcHJlcmVxdWlzaXRlLW1lc3NhZ2UtaWQ6IDIwMjUwMTIxMDk0
MTQwLjQwMDY4MDEtMS1xdWljX3dlbmJ5YW9AcXVpY2luYy5jb20KPiBwcmVyZXF1aXNpdGUtcGF0
Y2gtaWQ6IDcxOWExYzEzMTlhOGYyNWJlNTdmMWU5YmM2ODg4NzY4NGZmMGQ3Y2QKPiBwcmVyZXF1
aXNpdGUtcGF0Y2gtaWQ6IDQ0ZmY3MWI4MDMzZmM5MTg2N2E4M2EyZjhmMDYzZmQwZDk5NTFkNWUK
Pgo+IEJlc3QgcmVnYXJkcywKCkhpIEtvbnJhZCwKCkkgYXBwbGllZCB0aGUgc2VyaWVzLCBhbmQg
aXRzIHN1Y2Nlc3NmdWxseSB0ZXN0ZWQgb24gTGVub3ZvIFRoaW5rYm9vayAxNgpHNyBRT1kuwqBb
MV0gVGhhbmsgeW91IQoKWzFdCmh0dHBzOi8vZ2l0aHViLmNvbS9qZ2xhdGhlL2xpbnV4X21zX2Rl
dl9raXQvY29tbWl0cy9qZy91YnVudHUtcWNvbS14MWUtNi4xMy8KClRlc3RlZC1ieTogSmVucyBH
bGF0aGUgPGplbnMuZ2xhdGhlQG9sZHNjaG9vbHNvbHV0aW9ucy5iaXo+Cgp3aXRoIGJlc3QgcmVn
YXJkcwoKSmVucwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
