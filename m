Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88395CD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nnisWca8rKJml9gdoIzVDESLkDofm28fRNbLOADh2M=; b=jVXuSX8tg2s/mR
	qe1m48+ZA4IaXOIlDQRzHQt7h8AaE6JAYMtuq1zNu/NELDMAmH/e7C/LHMyYWtvh68RBOefnpILQH
	1UftRU17RWTBPmDVt+D1QIiR6AVtn02oxc/8sNxpxZnoVvhj6Qt9K1eGd9g2MaI4aKHMiUUYmHlhj
	VQKJHH+t0SfEBBDMRcS+Gutv0fsa8iBa9/nao16pKI2c15rPYD7X1qHJpEMgpQRr5Q1qbk58eMgri
	ozBERQLLFNHiwoHl+TbPrrEF6I1j4np8Tu/OeBIQI6Pf8KLzWdxw4gIY5gCRIlHnNttVnf7BtJdzd
	dOwofDG/lJM0wm7u7sog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsN5C-00000002ns9-3hay;
	Thu, 04 Apr 2024 13:24:46 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsN59-00000002nqe-1P05
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 13:24:44 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2d8129797fcso12799621fa.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 06:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712237080; x=1712841880; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QPezEfD0t1esOw49T38S7/dvcH4ZrRMz2JA7Keo/jF4=;
        b=TbG4iGZ8ugEhtnXyU+GsakjO4Ezvym+isKrn5B1kSdPEP4805trY07uNQTwhBLM7GS
         +7jfbsv1gMTA2TdSNXNCVbo5tz82aG/L6qRc0qDuQcYvM2QL7hbHZJ4Sr1bfQB/PkrCO
         qJS7pNPW3LwBEyBF2JDWicpDb3QHUQumC3oDZ+oAP4u+/39+LtfZ7wdYhV6QcR3/7iIp
         XlEV4CJYY+3ZEZs5em+cVMFtRFIPlqf+1TwfaPp+eCQGL9OT36cJCt9xoWyB/IUG7LsE
         N5TiZgojtQM1Gs+ZA4tuQOockfGVRrWygLmux6/DeYnsMetv7BXZmzMagrGggmB74rvs
         erNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712237080; x=1712841880;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPezEfD0t1esOw49T38S7/dvcH4ZrRMz2JA7Keo/jF4=;
        b=VEEjGhrNVPjN+cp4ZRAJ58INEsczKE5yZpUgHcT8kKDUM6+5r8rwlqbCnk2SJdmnc9
         crml20AXVQ9OqwGOgshB5Ghj8JvGdwfvx6UJefNirAV846AAp7h3NTXPYRjsRUnSDylX
         zP5VWHuSNUu7dkGTgfJ6DbGNyjN6eXpOlWdiRdN1IO1jK7oVUlGNZJYNhiMpbrm3bnc8
         R6xW+3y3n+T4ETQG9yV81PtH11bY5oYjlInGdvY1gg8m89YLrJVXvoLeqI39F3nSnZRz
         17esGjLE6DeKZZTd8Pcuqnwo0c1VnhMNV7L1uDcUiXnHt3bRSIImagQk5KcpvwydE81+
         oNag==
X-Forwarded-Encrypted: i=1; AJvYcCXjZ4jl+/qyOELVnwr+PSm+mkGKwLBzLWN7mcYXtGkSPnpjR4SQEKN78WKt1acLFzzb5zRkMucK5EKQJLQChx+eBpdzkayEieBcUtj7/Q==
X-Gm-Message-State: AOJu0Yxy5SDZX7QECIqZ48UXlyR2nvRkxhP59GErkhV1MjZby8HgcZNe
	ZrC52n5QyTB5rvxQvhK0YhvNhGU+6cF66bRaV8Kt60U6o/HbhylkFfDnqnhFQ0I=
X-Google-Smtp-Source: AGHT+IGxgH9A5s0WiNgOB7bXFCAvV00A/PQ0OT0BzurZEBZ4YAccdY+QiP2+2qjmMUfFLq93x9ZqAg==
X-Received: by 2002:a2e:7c0a:0:b0:2d8:274a:db16 with SMTP id x10-20020a2e7c0a000000b002d8274adb16mr2125485ljc.17.1712237079816;
        Thu, 04 Apr 2024 06:24:39 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id v3-20020a5d59c3000000b00341cc9c1871sm20435575wry.0.2024.04.04.06.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 06:24:39 -0700 (PDT)
Message-ID: <61f427ab3793def23d80d94457ff1568cae5ee11.camel@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 04 Apr 2024 14:24:37 +0100
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-9-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_062443_409871_4B263F71 
X-CRM114-Status: GOOD (  12.49  )
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

SGkgUGV0ZSwKClRoYW5rcyBmb3IgdGhpcyEKCkkgaGF2ZW4ndCByZXZpZXdlZCB0aGlzLCBidXQg
b25lIGltbWVkaWF0ZSBjb21tZW50Li4uCgpPbiBUaHUsIDIwMjQtMDQtMDQgYXQgMTM6MjUgKzAx
MDAsIFBldGVyIEdyaWZmaW4gd3JvdGU6Cj4gWy4uLl0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9j
bGsvc2Ftc3VuZy9jbGstZ3MxMDEuYyBiL2RyaXZlcnMvY2xrL3NhbXN1bmcvY2xrLWdzMTAxLmMK
PiBpbmRleCBkMDY1ZTM0M2E4NWQuLmI5Zjg0YzdkNWMyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2Nsay9zYW1zdW5nL2Nsay1nczEwMS5jCj4gKysrIGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGst
Z3MxMDEuYwo+IEBAIC0yMiw2ICsyMiw3IEBACj4gwqAjZGVmaW5lIENMS1NfTlJfTUlTQwkoQ0xL
X0dPVVRfTUlTQ19YSVVfRF9NSVNDX0FDTEsgKyAxKQo+IMKgI2RlZmluZSBDTEtTX05SX1BFUklD
MAkoQ0xLX0dPVVRfUEVSSUMwX1NZU1JFR19QRVJJQzBfUENMSyArIDEpCj4gwqAjZGVmaW5lIENM
S1NfTlJfUEVSSUMxCShDTEtfR09VVF9QRVJJQzFfU1lTUkVHX1BFUklDMV9QQ0xLICsgMSkKPiAr
I2RlZmluZSBDTEtTX05SX0hTSTIJKENMS19HT1VUX0hTSTJfWElVX1BfSFNJMl9BQ0xLICsgMSkK
CkNhbiB5b3UgcGxlYXNlIGtlZXAgdGhlICNkZWZpbmVzIGFscGhhYmV0aWNhbCAoaHNpIGJlZm9y
ZSBtaXNjKS4KCj4gwqAKPiDCoC8qIC0tLS0gQ01VX1RPUCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCj4gwqAKPiBAQCAtMzQw
OSw2ICszNDEwLDU2MCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNhbXN1bmdfY211X2luZm8gcGVy
aWMxX2NtdV9pbmZvIF9faW5pdGNvbnN0ID0gewo+IMKgCS5jbGtfbmFtZQkJPSAiYnVzIiwKPiDC
oH07Cj4gwqAKPiArLyogLS0tLSBDTVVfSFNJMiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tICovCgphbmQgdGhpcyBjb2RlIGJsb2NrIHNo
b3VsZCBiZSBlYXJsaWVyIGluIHRoZSBmaWxlCgo+IFsuLl0KwqAKPiDCoHN0YXRpYyBpbnQgX19p
bml0IGdzMTAxX2NtdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IEBAIC0z
NDMyLDYgKzM5ODcsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBnczEwMV9j
bXVfb2ZfbWF0Y2hbXSA9IHsKPiDCoAl9LCB7Cj4gwqAJCS5jb21wYXRpYmxlID0gImdvb2dsZSxn
czEwMS1jbXUtcGVyaWMxIiwKPiDCoAkJLmRhdGEgPSAmcGVyaWMxX2NtdV9pbmZvLAo+ICsJfSwg
ewo+ICsJCS5jb21wYXRpYmxlID0gImdvb2dsZSxnczEwMS1jbXUtaHNpMiIsCj4gKwkJLmRhdGEg
PSAmaHNpMl9jbXVfaW5mbywKPiDCoAl9LCB7CgphbmQgdGhpcyBibG9jayBzaG91bGQgbW92ZSB1
cAoKPiDCoAl9LAo+IMKgfTsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9j
ay9nb29nbGUsZ3MxMDEuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAx
LmgKPiBpbmRleCAzZGFjMzU3Nzc4OGEuLmFjMjM5Y2U2ODIxYiAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oCj4gKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9nb29nbGUsZ3MxMDEuaAo+IEBAIC01MTgsNCArNTE4LDY3IEBACj4gwqAj
ZGVmaW5lIENMS19HT1VUX1BFUklDMV9DTEtfUEVSSUMxX1VTSTlfVVNJX0NMSwkJNDUKPiDCoCNk
ZWZpbmUgQ0xLX0dPVVRfUEVSSUMxX1NZU1JFR19QRVJJQzFfUENMSwkJNDYKPiDCoAo+ICsvKiBD
TVVfSFNJMiAqLwoKYW5kIGFsbCB0aGVzZSBkZWZpbmVzLCB0b28uCgoKCkNoZWVycywKQW5kcmUn
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
