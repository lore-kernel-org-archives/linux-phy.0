Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE4EC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 20:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ir5icaTWjEQalDpokJIPiJHluAhLRo1hIHi3pBjl2rQ=; b=ywokn/1q0I411b
	KHqWPvZ0ylKEjsJKKqM+mFqa4I+wPiOwxhQU+YGGqH7u51mhYoGzpSRw/o9/CO/MDRs7iJ/OPb24Q
	kqN6vWpQ6Zbhfkl9IBUSaZ4+RHXSIBV8NzmXP27akpF6FM7DeikTb3eVZ5HePFZWGnc65m08mfzC5
	s6vQ79aB7N1MeANkHN2g5u9yQw0CkAGldZ9QtNNQWaV8rIc5GSuNBqQOc6fSdL2NYewjG4rR8vwsx
	3wv++5J6MrdL+ZB+z7FnW5tm1QufpboF7+pfzXII8AbISC0PNpwq4+dOWE8UoDtaOWvz3Ql8mOHTn
	hVLNsebWsAj1z9W1hV0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk657-0000000Fs4D-2RlG;
	Wed, 15 Jul 2026 20:19:49 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk655-0000000Fs3c-1Kf6
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 20:19:48 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c15f8dd6f18so360729666b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 13:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784146784; cv=none;
        d=google.com; s=arc-20260327;
        b=G9WtO1Qv8SVK/rzBZrfPu9DOZNvFEv0vRba2KgsTeYY4AYXrPybN3EjPIjR2Fpac6r
         L0ftG8B5t7hxGzJSJHNMSmjjqP17hOuhJhZwElViGxf0E3FEpKICx5RvSVht4F4ikCm8
         fyrL9Gb/UA4M2YuxqYmSwGZf4yAROP29oIpwyPH+lxUrqYNwc8FoHdNosmQiqE6YqUAv
         5tiCJ7CrUkOk1w1n14+geytfO9jd/IINw6J+rINPf4vBkHiduFXnMOCSnIhglhbvJDVx
         zE8WbM4++1okU4DyajS7G7m6PATOZyRJE0GNwvCaQkI0xqb4+y8IPRJsBNQ0bc4tQAy7
         AxGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nubd27NNIvTV4B3FNhrgAkY1uJlNnIcqTLmtlT2/89o=;
        fh=gw3bipLoCZzh+YD9SweiJm4PMtAHsVkVYEnblUVzrio=;
        b=XrYzMfzet3sJs8wPbvS1o0mzCRPeU8ns5PAp9QcQIT2pijThFYS1dFEfSCGZguGfNF
         essb/7atPxMEzqTgDH6P//DCi4HarsvnQ3udC1fhVUpg+3BmyvrCOmoxuy9VF7g/vPZq
         dCKVdtifkJiGyfuzT+OcV+yL9VUblL9LNMAe0g3cl7fVvnvcMc1Bp3TSiSzedWYppbVj
         5ECdmPAU2ZJPQ76riQGUy5H9v9lu95tUesnCoqIjZN5hMuLaxBIL+MvHbPg2ZBDg1HYo
         DgqOpwJOcPFH3wxBeOOFy3O+k/ip/+crZAEoG7qfGbuMY6sUAJlrMdxBSzGaAcoIW5yJ
         ch5A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784146784; x=1784751584; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nubd27NNIvTV4B3FNhrgAkY1uJlNnIcqTLmtlT2/89o=;
        b=Wz1ftkjuTXryqKnjCGm0W43zb4ILz8HzdoC48RJ4EJu8iZYp0zwtMZxjCI4ktGccv3
         9J/MjcjhWln7R1MhOjua8/RPyBZPKcx6WW2gx47PlOFyNCJM6fkR+veyfAIf8iE3VBKI
         mKopjfbCJiAFXbZIccTNf2DGv0aq18ElY3bnNzqW6wS3gDaErv8E7OoXCLEgrCWR4XPk
         CN5gJozypLDY1q2oj4xwkStBhRhNT356sLaSxefizM4B6c0owv6OeELnGQy7eCYC7ICB
         aJDp+wts5SDtrgMdadZwJrdIP/kfb/8Sn6LVs7he5xkCziIlISJv5o2BfAgoBNuGL7mf
         AJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784146784; x=1784751584;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nubd27NNIvTV4B3FNhrgAkY1uJlNnIcqTLmtlT2/89o=;
        b=IF/YNz8Fa13csP1M9JDcCnfCTWXSh73sK9xXIgENVImKKFkgy6CvbwhR9VHWIys1ua
         JEun5dE/sgzri9j8hlDbQYSNZGUc4BXcEPH95s9a5EVh1+2AUqH8a/8CKtR2Q9QwBnzT
         nmXti2MDWelTy7FiTu2hn9rEgq2VRd9I5+oQ+YQOzu7yr+E1CuZHw6rBgkK+ZWvwkk22
         X2pZUX14MXb5lBqmp2SfvH6j4R4lpZa1IV7gnwlhWolBpzNoAeFaxU6sbuu0UNo3S94l
         K7g9EmJXD49g2Ij4ixICuYtuh2jVQoY6uL9EfyO5+M7vEhNxvioJD27Zqe2K+tV4Sz5i
         ozvw==
X-Forwarded-Encrypted: i=1; AHgh+RphW0NQoF2oEdhHPbjAp8LLeYn+yozWcQEiNkVqrCH7qMFkvM8GZScZPI4rZtSsOFbB1BQq4DkECII=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3zDM6Jpg5y8L+Z0AKzYAQ0PAmMLngUYy/WuDG9lEilF8CkxKn
	tnkqTWniKsuNB9wX7RHnxC5n+jYdGfg1jqR3GnWGz/RZQH8dQfCZ8TCTJ3ynq2VQTGEdfiaeZDz
	QHJmTKZSA31VyM+VxHh7ton+eKSiRnUI=
X-Gm-Gg: AfdE7cnv1pKLZOWV85FYiYPGfXhZjGjnieYLbXYQtanCkNdVjywAO3n+Hx80T/+uJGu
	gazTZdyuZuUQPRJDMTTvCyjyULM6mr78BHI5ShdMcq9crDcYyBM1BlWIukAOkBX7/COxj/diGX0
	2pe2hdfPD8pVUTSzZ8PZP/z6OhnTSFOBtJoFjhKSNn6grasFFAQNJE7rwHviNvQ8wGpaBUfA8/J
	cd8O6sxWVc78XuGH+ESkB3uCmxwc1Vjrzhlate6TsztgsL3P/rXP1OkhlGADdf6A8ObTF0csZ0=
X-Received: by 2002:a17:907:9484:b0:c16:1227:e3d8 with SMTP id
 a640c23a62f3a-c16790fa355mr278084266b.13.1784146783933; Wed, 15 Jul 2026
 13:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com>
 <20260715191453.DEE731F000E9@smtp.kernel.org>
In-Reply-To: <20260715191453.DEE731F000E9@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 04:19:32 +0800
X-Gm-Features: AUfX_my5g85fDayigq-hMxxzbVtYHNZXP8Ax7QFobz0v3NSrNqtAVYC0ELzRnTI
Message-ID: <CALj3r0ge83r9kmcDbnhvsEyD983Q7_oNcFTrd2iSFdvOsHTFdQ@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling
 for Rockchip RK3568
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, 
	robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_131947_415623_0820F6F1 
X-CRM114-Status: GOOD (  23.26  )
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

VGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKPiBbIC4uLiBdCj4KPiA+IEBAIC04ODQsNyArODg5LDcg
QEAgc3RhdGljIGludCB4cGNzX2NvbmZpZ19hbmVnX2MzN18xMDAwYmFzZXgoc3RydWN0IGR3X3hw
Y3MgKnhwY3MsCj4gPgo+ID4gICAgICAgaWYgKG5lZ19tb2RlID09IFBIWUxJTktfUENTX05FR19J
TkJBTkRfRU5BQkxFRCkgewo+ID4gICAgICAgICAgICAgICByZXQgPSB4cGNzX3dyaXRlKHhwY3Ms
IE1ESU9fTU1EX1ZFTkQyLCBNSUlfQk1DUiwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBtZGlvX2N0cmwgfCBCTUNSX0FORU5BQkxFKTsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBtZGlvX2N0cmwgfCBCTUNSX0FORU5BQkxFIHwgQk1DUl9BTlJFU1RBUlQpOwo+
Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gVGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb25zIGltcHJv
dmluZyBTR01JSSBBTiBzdGF0ZSBoYW5kbGluZywgYnV0IHRoaXMKPiBhZGRzIEJNQ1JfQU5SRVNU
QVJUIHRvIHRoZSAxMDAwQkFTRS1YIGNvbmZpZ3VyYXRpb24gcGF0aCBpbgo+IHhwY3NfY29uZmln
X2FuZWdfYzM3XzEwMDBiYXNleCgpLiBXYXMgdGhpcyB1bmludGVudGlvbmFsLCBvciBzaG91bGQg
dGhlCj4gY29tbWl0IG1lc3NhZ2UgYmUgdXBkYXRlZCB0byBtZW50aW9uIHRoaXMgYmVoYXZpb3Ig
Y2hhbmdlIGZvciAxMDAwQkFTRS1YPwoKWW91IGFyZSBjb3JyZWN0LiBUaGlzIHdhcyB1bmludGVu
dGlvbmFsLiBUaGUgYEJNQ1JfQU5SRVNUQVJUYCBjaGFuZ2UgaW4KYHhwY3NfY29uZmlnX2FuZWdf
YzM3XzEwMDBiYXNleCgpYCBpcyBhIG1pc3Rha2UgdGhhdCB3YXMgaW50cm9kdWNlZApkdXJpbmcg
ZGV2ZWxvcG1lbnQgYW5kIHNob3VsZCBub3QgYmUgdGhlcmUuIEkgd2lsbCByZW1vdmUgaXQgaW4g
djIuCgpUaGUgU0dNSUkgcGF0aCAoYHhwY3NfY29uZmlnX2FuZWdfYzM3X3NnbWlpKClgKSBpcyB0
aGUgb25lIHRoYXQgYWN0dWFsbHkKbmVlZHMgdGhpcyBjaGFuZ2UsIGFuZCB0aGF0IGlzIHdoYXQg
SSBoYXZlIHRlc3RlZCBvbiB0aGUgUGhvdG9uaWNhdCBib2FyZC4KVGhlIDEwMDBCQVNFLVggcGF0
aCB3YXMgbm90IHRlc3RlZCBhbmQgdGhlIGNoYW5nZSB3YXMgbm90IGludGVuZGVkLgoKPiBbIC4u
LiBdCj4KPiA+IEBAIC0xMDg2LDcgKzEwOTQsMjQgQEAgc3RhdGljIGludCB4cGNzX2dldF9zdGF0
ZV9jMzdfc2dtaWkoc3RydWN0IGR3X3hwY3MgKnhwY3MsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgc3RhdGUtPmR1cGxleCA9IERVUExFWF9GVUxMOwo+ID4gICAgICAgICAgICAgICBlbHNlCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgc3RhdGUtPmR1cGxleCA9IERVUExFWF9IQUxGOwo+ID4g
LSAgICAgfSBlbHNlIGlmIChyZXQgPT0gRFdfVlJfTUlJX0FOX1NUU19DMzdfQU5DTVBMVF9JTlRS
KSB7Cj4gPiArCj4gPiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKyAgICAgfQo+ID4gKwo+
ID4gKyAgICAgLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGludGVycnVwdCAqLwo+ID4g
KyAgICAgaWYgKHN0YXRlLT5hbl9jb21wbGV0ZSkKPiA+ICsgICAgICAgICAgICAgeHBjc193cml0
ZSh4cGNzLCBNRElPX01NRF9WRU5EMiwgRFdfVlJfTUlJX0FOX0lOVFJfU1RTLCAwKTsKPgo+IFtT
ZXZlcml0eTogSGlnaF0KPiBDYW4gY2xlYXJpbmcgdGhlIGludGVycnVwdCBoZXJlIGxlYWQgdG8g
YSBwZXJtYW5lbnRseSBzdGFsbGVkIGxpbmsgb24KPiBXYW5neHVuIHBsYXRmb3JtcyBpZiB0aGUg
c3Vic2VxdWVudCB4cGNzX3JlYWQoKSBmYWlscz8KPgo+IFRoZSBvcmlnaW5hbCBjb2RlIGNsZWFy
ZWQgRFdfVlJfTUlJX0FOX0lOVFJfU1RTIGF0IHRoZSB2ZXJ5IGVuZCBvZiB0aGUKPiBEV19WUl9N
SUlfQU5fU1RTX0MzN19BTkNNUExUX0lOVFIgYmxvY2ssIGFmdGVyIHN1Y2Nlc3NmdWxseSByZWFk
aW5nCj4gTUlJX0JNQ1IgYW5kIE1JSV9BRFZFUlRJU0UuCj4KPiBCeSBtb3ZpbmcgdGhlIGludGVy
cnVwdCBjbGVhciBoZXJlOgo+Cj4gICAgIGlmIChzdGF0ZS0+YW5fY29tcGxldGUpCj4gICAgICAg
ICB4cGNzX3dyaXRlKHhwY3MsIE1ESU9fTU1EX1ZFTkQyLCBEV19WUl9NSUlfQU5fSU5UUl9TVFMs
IDApOwo+Cj4gSWYgYSB0cmFuc2llbnQgTURJTyBlcnJvciBvY2N1cnMgZHVyaW5nIHRoZSBzdWJz
ZXF1ZW50IE1JSV9CTUNSIHJlYWQ6Cj4KPiAgICAgc3BlZWQgPSB4cGNzX3JlYWQoeHBjcywgTURJ
T19NTURfVkVORDIsIE1JSV9CTUNSKTsKPiAgICAgaWYgKHNwZWVkIDwgMCkKPiAgICAgICAgIHJl
dHVybiBzcGVlZDsKPgo+IFRoZSBmdW5jdGlvbiB3aWxsIGV4aXQgd2l0aCBhbiBlcnJvciBhbmQg
dGhlIGxpbmsgd2lsbCByZW1haW4gZG93biwgYnV0IHRoZQo+IEFOIGNvbXBsZXRlIHN0YXR1cyBo
YXMgYWxyZWFkeSBiZWVuIGNsZWFyZWQuIFdpbGwgdGhpcyBwcmV2ZW50IHRoZSBXYW5neHVuCj4g
aW5pdGlhbGl6YXRpb24gYmxvY2sgZnJvbSBydW5uaW5nIG9uIHRoZSBuZXh0IHBvbGwgYW5kIGxl
YXZlIHRoZSBsaW5rCj4gc3R1Y2s/CgpObywgdGhpcyBpcyBzYWZlLiBUaGUgYHJldGAgdmFsdWUg
dXNlZCB0byBkZXRlcm1pbmUgd2hldGhlciB0byBlbnRlciB0aGUKV2FuZ3h1bi1zcGVjaWZpYyBw
YXRoIGlzIHJlYWQgZnJvbSB0aGUgcmVnaXN0ZXIgYmVmb3JlIHRoZSBjbGVhciBvcGVyYXRpb24u
ClRoZSBjbGVhciBvbmx5IGFmZmVjdHMgdGhlIGhhcmR3YXJlIHJlZ2lzdGVyLCBub3QgdGhlIHN0
YWNrIHZhcmlhYmxlLiBTbwpXYW5neHVuJ3MgYGlmIChyZXQgPT0gRFdfVlJfTUlJX0FOX1NUU19D
MzdfQU5DTVBMVF9JTlRSKWAgYmxvY2sgd2lsbCBzdGlsbApiZSByZWFjaGVkIGNvcnJlY3RseS4K
CklmIHRoZSBzdWJzZXF1ZW50IE1ESU8gcmVhZCBmYWlscywgdGhlIGZ1bmN0aW9uIHdpbGwgcmV0
dXJuIHRoZSBlcnJvciBhbmQKdGhlIGxpbmsgc3RhdGUgd2lsbCByZW1haW4gZG93bi4gU2luY2Ug
dGhlIGhhcmR3YXJlIGludGVycnVwdCBzdGF0dXMgaGFzCmFscmVhZHkgYmVlbiBjbGVhcmVkLCB0
aGUgbmV4dCBwb2xsIHdpbGwgbm90IHNlZSBgc3RhdGUtPmFuX2NvbXBsZXRlYCBzZXQKYWdhaW4s
IHNvIHRoZSBXYW5neHVuIGJsb2NrIHdpbGwgbm90IGJlIGVudGVyZWQgdW50aWwgYSBuZXcgQU4g
ZXZlbnQKb2NjdXJzLiBUaGlzIGlzIGFjdHVhbGx5IHRoZSBpbnRlbmRlZCBiZWhhdmlvciDigJQg
dGhlIGludGVycnVwdCBpcyBvbmx5CnZhbGlkIGZvciB0aGUgY3VycmVudCBBTiBldmVudCBhbmQg
c2hvdWxkIG5vdCBiZSBwcm9jZXNzZWQgbW9yZSB0aGFuIG9uY2UuCgpUaGVyZWZvcmUsIHRoZSBj
aGFuZ2UgZG9lcyBub3QgaW50cm9kdWNlIGEgcmVncmVzc2lvbiBvbiBXYW5neHVuIHBsYXRmb3Jt
cy4KCkkgd2lsbCByZW1vdmUgdGhlIDEwMDBCQVNFLVggY2hhbmdlIGluIHYyIGFuZCBrZWVwIG9u
bHkgdGhlIFNHTUlJLXJlbGF0ZWQKZml4ZXMuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
