Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDACDCD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 10:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xACvQ52a6YchupYyGmZ9zRgilOnOk4IK3w0NCVds3jo=; b=KGo/+1FjgRt6mB
	v9JwQOe8nZLckF5FjnYoSJBzeY0AtgsYvnpKgHNSxw7EwesIny5WdkQAQVa2ehlLF/aO2T7N3FFO6
	zUaXAVOOTc5AOCK1jMHJz8Em+cqZeLxf6CloNQl6Xu8v8c6tNZbs47igumuFkGM+iUdB5WjDUmDI9
	QZBjm8xCZAQaxwjQawhrAogf0OUxNJKsm6rjdv0r5VjCdKgGuluZsFIoWW9+LPmO6TdGVIndIH2xr
	gXbZNwViKDQLit6H/NSYWpt/A2Y1aZxW5ScbwvOfk9JPKQKAExPoAOOtj6DMtTTSI0VZ14+v+mDWJ
	XmdpGrB8SpNzLJM3xiGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQmn-0000000HLQX-2KHa;
	Tue, 03 Sep 2024 10:29:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQj6-0000000HKkx-3PS4
	for linux-phy@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YuTSwIl9q9JUC3i2aYAeogOmWxwYrrJ9+YxLTjByK44=; b=IrUeLIFF5PIiIKPW18aDiDQYLZ
	z1Rk/CaX7IQ6Rv/sbGjVzTHw1MJv5wYZQBU7xTs8s9Famt8JGHwqkc/8K6Ru4BFkCB7HJPcVAKMTZ
	B9bd9Q8nC4UHTzEV84qm6DOLOiAFPF6T4E6RB525dQmsyH3k2Vz5au9znaLKkTlx60FpbxQTW6xqx
	muj0WQ1EG5rbmiga3DPhZvzxCvdBztvmH1OjtNXFl4/4DhHCOKeO6XZYjkGjiVknb1tygyXIZX/pZ
	I+mkERGV/TffJUv4C8HxQ1VEuzyOv65xHYq7Th2l2xaN55sIU5iliIWCNkDu7i3FVH68/mpJ6j63I
	7MX4daBw==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQj2-0000000CJKA-1SGB
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 10:25:31 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2f3e9fb6ee9so64710971fa.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 03:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725359124; x=1725963924; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YuTSwIl9q9JUC3i2aYAeogOmWxwYrrJ9+YxLTjByK44=;
        b=ZCnQS7m5Aw2/PisFOApC9un9w1nxBuIna+gPmSD2boYsGY+JOq1tuUXh3amkPbaaAk
         6IvwZWxBp7ctVASrnEfTYOiJE1/G21ylbFTju0UWhSRhxq+j2Ph/1NC3ismVfuLG6viL
         3sajHFIQ2Qb1YMzoGO3GCKXyHFyO64Jxz7guqIvvUEH1tpevmokISwPzfzbD8OGp7nrh
         J7IF2y4rfefIUMGnTRI5sa+cfbbxQicGBXleIMeIineuXN/G8AmBmU1FQdXB6HISHwhh
         xnTItGFcc2JwO/91yrHAOMyQCEZim/Qv+UOqxk+jWKBh6NFo4MTfcmtq85zAv45Ja/79
         hE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725359124; x=1725963924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YuTSwIl9q9JUC3i2aYAeogOmWxwYrrJ9+YxLTjByK44=;
        b=PwJn18YrR1kpkRkHp5lAGe0II+2u2M8mvFfmsyim0K67zV6FfC2r8MIIsrdO+tEV+w
         wN1DTMKRlSWRrPmjL2qas+vGVq1D282+xjBTF2SlRcpJd0W+vjoNcfZjKKg7WvoLDvLS
         ABJq2nCMGExfeOWk2QsDJePTRpaqiZRbfb52BeENzpP0TmQ4OhLDBPJKsuuv4WCPeRXo
         P43GcCyj3wKD+hvrW8priVOmA691CoLHIwfZaiIMUqTW4yofNWRZDXzv7ueH/z/MSEhE
         pLyP+fORyMUvU9e8Ejg7jqYatnaMiJHgtYeGKKFwqW/qquKMfsTXWmZSLxaO9RYrgW60
         aMFw==
X-Forwarded-Encrypted: i=1; AJvYcCUVlYSx6nhyCKT8JHEWvH/7DeNNGmv57Hgdg6/9+Gv1rggwUCwvWz0sf7nsdIKI+6oa1QwrgASL24k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/v0pjUvetim/w7TMFR5pz/BPMiZvJBHVKO8r8AARyK9/KZbpB
	e2G82V+ubjNTp8UjYoKUiQAVq5Y0IS0zL6AuiN9Pj8/kyr1R7knWQuQyuEP55Ho=
X-Google-Smtp-Source: AGHT+IGZWwpSEYRg2qH2RqcYvPMCJJySduQWh9YhT7sAL+Iohwe2+AkwTjRfrV7dO20ThLaUEJ4qCQ==
X-Received: by 2002:a2e:a7c1:0:b0:2f3:d82b:1955 with SMTP id 38308e7fff4ca-2f636a2be54mr41394781fa.25.1725359124125;
        Tue, 03 Sep 2024 03:25:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226cd4bcbsm6343668a12.74.2024.09.03.03.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 03:25:23 -0700 (PDT)
Message-ID: <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
Date: Tue, 3 Sep 2024 13:25:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_112528_769609_7E325764 
X-CRM114-Status: GOOD (  29.09  )
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

CgpPbiAwMy4wOS4yMDI0IDEwOjE4LCBCaWp1IERhcyB3cm90ZToKPiBIaSBDbGF1ZGl1LAo+IAo+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBCaWp1IERhcwo+PiBTZW50OiBN
b25kYXksIFNlcHRlbWJlciAyLCAyMDI0IDExOjQ4IEFNCj4+IFN1YmplY3Q6IFJFOiBbUEFUQ0gg
MDAvMTZdIEFkZCBpbml0aWFsIFVTQiBzdXBwb3J0IGZvciB0aGUgUmVuZXNhcyBSWi9HM1MgU29D
Cj4+Cj4+IEhpIENsYXVkaXUsCj4+Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4g
RnJvbTogY2xhdWRpdSBiZXpuZWEgPGNsYXVkaXUuYmV6bmVhQHR1eG9uLmRldj4KPj4+IFNlbnQ6
IE1vbmRheSwgU2VwdGVtYmVyIDIsIDIwMjQgMTE6NDEgQU0KPj4+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggMDAvMTZdIEFkZCBpbml0aWFsIFVTQiBzdXBwb3J0IGZvciB0aGUgUmVuZXNhcwo+Pj4gUlov
RzNTIFNvQwo+Pj4KPj4+Cj4+Pgo+Pj4gT24gMDIuMDkuMjAyNCAxMjoxOCwgQmlqdSBEYXMgd3Jv
dGU6Cj4+Pj4+Pj4+IERvIHlvdSBoYXZlIGFueSBwbGFuIHRvIGNvbnRyb2wgdGhpcyBwb3dlciB0
cmFuc2l0aW9ucyhBTExfT04gdG8gQVdPIGFuZCB2aWNlIHZlcnNhKSBpbiBsaW51eD8KPj4+Pj4+
PiBBcyB5b3Uga25vdywgdGhlIFJaL0czUyBVU0IgUE0gY29kZSBpcyBhbHJlYWR5IHByZXBhcmVk
LiBUaGlzIGlzCj4+Pj4+Pj4gYWxzbyBjb25maWd1cmluZyB0aGVzZSBzaWduYWxzIHdoZW4gZ29p
bmcgdG8gc3VzcGVuZC9leGl0aW5nIGZyb20gcmVzdW1lLgo+Pj4+Pj4+IFcvbyBjb25maWd1cmlu
ZyBwcm9wZXJseSB0aGVzZSBzaWduYWxzIHRoZSBVU0IgaXMgbm90IHdvcmtpbmcgYWZ0ZXIgYSBz
dXNwZW5kL3Jlc3VtZSBjeWNsZS4KPj4+Pj4+IE9uZSBvcHRpb24gaXMgdG8gaGFuZGxlIFNZU0Mg
VVNCIFBXUlJEWSBzaWduYWwgaW4gVEYtQSwgaWYgeW91Cj4+Pj4+PiBwbGFuIHRvIGhhbmRsZSBz
eXN0ZW0gdHJhbnNpdGlvbnMKPj4+Pj4gdGhlcmU/Pwo+Pj4+Pgo+Pj4+PiBBcyBJIG1lbnRpb25l
ZCwgdGhlIHNldHRpbmdzIGluIHRoZXNlIHJlZ2lzdGVycyBtYXkgYmUgY2hhbmdlZCBieQo+Pj4+
PiBpbnRlcm1lZGlhcnkgYm9vdGluZwo+Pj4gYXBwbGljYXRpb25zLgo+Pj4+PiBEZXBlbmRpbmcg
b24gdGhhdCwgTGludXggbmVlZCB0byBjb250cm9sIGl0IGFsc28gb24gcHJvYmUgZm9yIFVTQgo+
Pj4+PiB0byB3b3JrIChpdCBzaG91bGQgYmUgdGhlIHNhbWUgd2l0aCBQQ0llLCB0aGVzZSBzaWdu
YWxzIHNlZW1zIHNpbWlsYXIgZnJvbSBIVyBtYW51YWwKPj4gZGVzY3JpcHRpb24pLgo+Pj4+IFlv
dSBtZWFuIHN5c3RlbSB0cmFuc2l0aW9uIHNldHRpbmdzIHdpbGwgYmUgb3ZlcnJpZGUgYnkgVS1i
b290LCBzbyBMaW51eCBuZWVkcyB0byByZXN0b3JlIGl0Cj4+IGJhY2s/Pwo+Pj4KPj4+IEl0IHdh
cyB0YWxraW5nIGFib3V0IGJvb3RpbmcuLi4KPj4KPj4gSSBhbSBhbHNvIHJlZmVycmluZyB0byBi
b290LiBCb290IHN0YXJ0cyB3aXRoIFRGLUEgYW5kIGl0IGhhcyBhIHN5c3RlbSBzdGF0ZS4KPj4K
Pj4+Cj4+PiBZb3UgcHJvcG9zZWQgdG8gaGFuZGxlIFNZU0Mgc2lnbmFscyBmcm9tIFRGLUEgaW4g
YSBkaXNjdXNzaW9uIGFib3V0IHN5c3RlbSBwb3dlciB0cmFuc2l0aW9uczoKPj4+Cj4+PiAiT25l
IG9wdGlvbiBpcyB0byBoYW5kbGUgU1lTQyBVU0IgUFdSUkRZIHNpZ25hbCBpbiBURi1BLCAgaWYg
eW91IHBsYW4gdG8gaGFuZGxlIHN5c3RlbSB0cmFuc2l0aW9ucyIKPj4+Cj4+PiAoSSB3YXMgZ3Vl
c3NpbmcgdGhlICJzeXN0ZW0gdHJhbnNpdGlvbiIgc3RhdGVtZW50IHRoZXJlIHJlZmVycyB0bwo+
Pj4gcG93ZXIgc3RhdGVzIHRyYW5zaXRpb25zLCBBTExfT04gPC0+Cj4+PiBBV08vVkJBVCkKPj4K
Pj4gVGhhdCBpcyBjb3JyZWN0Lgo+Pgo+Pj4KPj4+IGFuZCBJIGdhdmUgdGhlIGJvb3RpbmcgcHJv
Y2VzcyBhcyBhIGNvdW50ZXIgZXhhbXBsZTogaWYgd2UgaGFuZGxlIGl0Cj4+PiBpbiBURi1BIGl0
IG1heSBub3QgYmUgZW5vdWdoIGFzIHRoZXNlIHNpZ25hbHMgbWlnaHQgYmUgY2hhbmdlZCBieSBp
bnRlcm1lZGlhcnkgYm9vdGluZyBhcHBsaWNhdGlvbnMKPj4gKGUuZy4sIFUtQm9vdCkuCj4+Cj4+
IFdoeSBzaG91bGQgVS1ib290IG92ZXJyaWRlLCBzeXN0ZW0gc3RhdGUgc2lnbmFscyBzdWNoIGFz
IFVTQiBQV1JSRUFEWT8gQ2FuIHlvdSBwbGVhc2UgZ2l2ZSBhbiBleGFtcGxlLgo+Pgo+Pj4KPj4+
IFRvIGNvbmNsdWRlLCB0aGVyZSBhcmUgMyBzY2VuYXJpb3MgSSBzZWUgd2hlcmUgdGhlc2Ugc2ln
bmFscyBuZWVkIHRvCj4+PiBiZQo+Pj4gaGFuZGxlZDoKPj4+IDEvIGJvb3RpbmcKPj4+IDIvIHN1
c3BlbmQgdG8gUkFNCj4+PiAzLyBkcml2ZXIgdW5iaW5kL2JpbmQKPj4KPj4gLS0+IEl0IHNob3Vs
ZCBiZSBPSyBhcyBsaW51eCBpcyBub3QgaGFuZGxpbmcgVVNCIFBXUlJFQURZIHNpZ25hbC4KPj4K
Pj4+Cj4+PiBJbiBjYXNlIG9mIGJvb3Rpbmc6IGlmIHdlIGhhdmUgVEYtQSB0byBzZXQgc2lnbmFs
cyB0aGVyZSBtaWdodCBiZQo+Pj4gaW50ZXJtZWRpYXJ5IGJvb3RpbmcgYXBwbGljYXRpb25zIChl
LmcuIFUtQm9vdCkgdGhhdCBzZXQgdGhlc2Ugc2lnbmFscwo+Pj4gYWxzby4gSWYgaXQgbGVhdmVz
IGl0IGluIGltcHJvcGVyIHN0YXRlIGFuZCBMaW51eCB3YW50cyB0byB1c2UgVVNCIHRoZW4gdGhl
IFVTQiB3aWxsIG5vdCB3b3JrIChpZgo+PiBMaW51eCBkb2Vzbid0IGhhbmRsZSBpdCkuCj4+Cj4+
IFRoYXQgaXMgdGhlIHByb2JsZW0gb2YgVS1ib290LiBVLWJvb3Qgc2hvdWxkIG5vdCBvdmVycmlk
ZSBzeXN0ZW0gc3RhdGUgc2lnbmFscyBzdWNoIGFzIFVTQiBQV1JSRUFEWS4KPj4KPj4+Cj4+PiBJ
biBjYXNlIG9mIHN1c3BlbmQgdG8gUkFNOiBhcyBURi1BIGlzIHRoZSBvbmx5IGFwcGxpY2F0aW9u
IGluIHRoZQo+Pj4gc3VzcGVuZCB0byBSQU0gY2hhaW4sIGl0IHNob3VsZCB3b3JrIGhhbmRsaW5n
IGl0IGluIFRGLUEuCj4+Cj4+IFRoYXQgaXMgY29ycmVjdCwgVEYtQSBzaG91bGQgaGFuZGxlIGJh
c2VkIG9uIHN5c3RlbSBzdGF0ZS4KPj4KPj4+Cj4+PiBJbiBjYXNlIG9mIHVuYmluZC9iaW5kOiBj
dXJyZW50bHkgd2UgZG9uJ3Qga25vdyBpZiB0aGVzZSBzaWduYWxzCj4+PiBpbnRyb2R1Y2VzIGFu
eSBraW5kIG9mIHBvd2VyIHNhdmluZyBzbyBhc3NlcnRpbmcvZGUtYXNzZXJ0aW5nIHRoZW0gaW4g
TGludXggbWF5IGJlIHVzZWZ1bCBmcm9tIHRoaXMKPj4gcGVyc3BlY3RpdmUsIGlmIGFueS4KPj4K
Pj4gVGhlc2UgYXJlIHN5c3RlbSBzaWduYWxzLCBhY2NvcmRpbmcgdG8gbWUgc2hvdWxkIG5vdCBi
ZSB1c2VkIGluIHVuYmluZC9iaW5kLgo+Pgo+PiBJIG1heSBiZSB3cm9uZy4KPiAKPiBKdXN0IHRv
IGFkZCB0aGUgYmVsb3cgYXJlIHRoZSA0IHN5c3RlbSBzdGF0ZXMgKHBvd2VyIG1vZGUpIGZvciB0
aGlzIExTSS4KPiAKPiBJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5LCB3ZSBuZWVkIHRvIGNvbmZp
Z3VyZSBVU0IgUFdSUkRZIHNpZ25hbAo+IG9ubHkgd2hlbiB0aGVyZSBpcyBhIHRyYW5zaXRpb24g
ZnJvbSBBTExfT04gdG8gQVdPIG1vZGUgYW5kIHZpY2UgdmVyc2EuCj4gYXMgeW91IHNlZSBvbiBB
V08gbW9kZSBvbmx5IENNLTMzIGlzIGFjdGl2ZS4KPiAKPiDigKIgQUxMX09GRiBtb2RlOiBBbGwg
Q1BVcyBhbmQgcGVyaXBoZXJhbCBtb2R1bGVzIGNhbiBub3QgYmUgd29ya2VkLgo+IOKAoiBBTExf
T04gbW9kZTogQWxsIENQVXMgYW5kIHBlcmlwaGVyYWwgbW9kdWxlcyBjYW4gYmUgd29ya2VkLgo+
IOKAoiBBV08gbW9kZTogQ29ydGV4LU0zMyBhbmQgcGVyaXBoZXJhbCBtb2R1bGVzIGluIFBEX1ZD
QyBhbmQgUERfVkJBVFQgZG9tYWluIGNhbiBiZSB3b3JrZWQuCj4g4oCiIFZCQVRUIG1vZGU6IE9u
bHkgUlRDLCB0YW1wZXIgZGV0ZWN0aW9uIGFuZCBiYWNrdXAgcmVnaXN0ZXJzIGNhbiBiZSB3b3Jr
ZWQuCj4gCj4gU3lzdGVtIG1hbmFnZXIgd2hpY2ggaXMgY29udHJvbGxpbmcgYm90aCBDQS01NSBh
bmQgQ00tMzMsIHdpbGwgc2V0IFVTQiBQV1JSRFkgc2lnbmFsCj4gYmFzZWQgb24gc3lzdGVtIHN0
YXRlLgo+IAo+IFNpbmNlIHdlIGRvbid0IGhhdmUgc3lzdGVtIG1hbmFnZXIgZm9yIGNvbnRyb2xs
aW5nIGJvdGggQ0EtNTUgYW5kIENNLTMzCj4gUHJvYmFibHkgZnJvbSBDQS01NSBwZXJzcGVjdGl2
ZSwgVEYtQSBzaG91bGQgYmUgc3VmZmljaWVudC4KPiAKPiBEdXJpbmcgYm9vdCBjbHIgVVNCIFBX
UiBSRUFEWSBzaWduYWwgaW4gVEYtQS4KPiBTVFIgY2FzZSwgc3VzcGVuZCBzZXQgVVNCIFBXUiBS
RUFEWSBzaWduYWwgaW4gVEYtQS4KPiBTVFIgY2FzZSwgcmVzdW1lIGNsciBVU0IgUFdSIFJFQURZ
IHNpZ25hbCBpbiBURi1BLgoKQXMgSSBzYWlkIHByZXZpb3VzbHksIGl0IGNhbiBiZSBkb25lIGlu
IGRpZmZlcmVudCB3YXlzLiBNeSBwb2ludCB3YXMgdG8gbGV0CkxpbnV4IHNldCB3aGF0IGl0IG5l
ZWRzIGZvciBhbGwgaXQncyBkZXZpY2VzIHRvIHdvcmsuIEkgdGhpbmsgdGhlIHdheSB0byBnbwpm
b3J3YXJkIGlzIGEgbWFpbnRhaW5lciBkZWNpc2lvbi4KClRoYW5rIHlvdSwKQ2xhdWRpdSBCZXpu
ZWEKCj4gCj4gSSBhbSBub3QgZXhwZXJ0IGluIHRoaXMgYXJlYS4gSSBtYXkgYmUgd3JvbmcuCj4g
Cj4gTWF5YmUgd2UgbmVlZCB0byBnZXQgYW4gb3BpbmlvbiBmcm9tIFBvd2VyIGV4cGVydHMgaW4g
TGludXguCj4gCj4gQ2hlZXJzLAo+IEJpanUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
