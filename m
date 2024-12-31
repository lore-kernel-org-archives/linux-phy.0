Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2554E77188
	for <linux-phy@archiver.kernel.org>; Tue, 31 Dec 2024 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYJfuPoRTOLfdHGGCo4Zyp9v9OPg25Ab/JKIaN/Z07U=; b=fA/bcOZOrfXJIs
	6n43eTbOJoexmZE0SzUcZrJiLnBylRD4LnUL49v2WtGOSvaKjvDUyG7qypTM/R1U41PJCcKeNWgmW
	5V0FUJ5d4kfDcmQbHP5pUR/RZAVXsJUPXSmCl2187BtQqul/v73ywSN/nxw7aZGo1nSp2IKKQL4ge
	AIjRLPcSvpEuKg+wMMmmtZylIBe2FbgMB60d1AQoWn2NsZI7RIuUAgKM/9TGckeOFXbC1W+JZhZxK
	eMvT1GS+QQQUw1FYL8MUisTF6TblHu+9CotCUqcoRLlmPDQfoOeLUbKj9lBT93LRrOeNYQhxxkf51
	WQxvcLmJYrie5WUW7bJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfdt-00000007VsC-1oJ7;
	Tue, 31 Dec 2024 17:02:53 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSfdr-00000007Vro-0gss
	for linux-phy@lists.infradead.org;
	Tue, 31 Dec 2024 17:02:52 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2ee86a1a92dso10913286a91.1
        for <linux-phy@lists.infradead.org>; Tue, 31 Dec 2024 09:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735664570; x=1736269370; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jK8SPxFIjfp2BCHYnSzvPfBugUw5A2Kl7sd74x0WVMc=;
        b=TFOTZQlkAVjeqY7C0qNmRML38kWjcSnDuI5CFvQwwz6D1rcA6kE3vDClMmcd97yYNS
         PbvoECvH7eqBkeibKA9BenKl+PEkoa9Y2hpFZ1IT9VuLAYA1zVGY+2sqLAF40wwp5X3j
         4fLHEs2DnPgxeLTxM24osNpPtKsaqVfFjCMSwXnUI5R2/8iZHo2gWEhU/6VIFHSPY2pQ
         na9ITSP12QTBzu28jX/uc27AaUppKvkhN6dXNOU34eeqtg+xfWQcI010TdETkutbNkYv
         RXVciOGEhI53ETYBuKcB0Zab6njSzuWxSOEQeGfr99u6OUtxL1wzFZdrD5LTDUeR9ovA
         KCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735664570; x=1736269370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jK8SPxFIjfp2BCHYnSzvPfBugUw5A2Kl7sd74x0WVMc=;
        b=UuOOujwwerAI4BRTiUTeHpzD8alHuj0W6LC0QxqRLaxG3cTfmnQ/dt87JEpX/hEXEc
         yAKYKt7kZKr8OCHcUR70SQey5wqa3Xtt+S0R1c79kkLRqATQIuHjJmnCiTUtTXhkIIAG
         v/DMVnh9CNf18i6PcNFKENECDSCPYNmLtuvb1wWfXSLu9Rmjrl5be85QUe8gWQMgCY65
         Nm8AGAG8eRIe1adQmEHese3MLzi/Wky6TgQgvM9DPXen0JkAJrwNdfCMt75U/7aexAb9
         pnGn1YqOPoAJl2dgEcsVEdMbf8PmBSEevl2//WJDKqn5At7qk96bVscheF++QkgCAYAj
         rzQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv51tfohJ0J6I3z3gaDNdIYLRFAwizaucS7UAF0X0kl7er+BhAPCTeTT/P5Z0ROWndBCR14P6nhHM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7mvLip7Nhh1jqy4NKHkwyo13wrhBZl5+bPCSdR52yrNdYGjb3
	1UY6WRLvJqjIRo2mlRhHsEhulFrj14TN8ItPrfMsinXj25AzWMLO/hMszG1H150bH0A1TX4UWOq
	CB0VT7haQRnw7Pu+Hp2ucW2D/iJ0=
X-Gm-Gg: ASbGncsepQPLU1vD7u8PEBH2CtXLCyxx5vo/C2yf/Z09JKeASyTkcQtoNWNR2ewnuS5
	XqT1HcSmaiu8v6VeVzYz7mhjv66BN7JJrqQFl7Q==
X-Google-Smtp-Source: AGHT+IHQbLJVJadim00bvSx6KPCDfog136bOHb3usDyjPDP9MjPUcvNmP2ZwLR+QIQS5UteA+XjekIzAd38RcZhygyg=
X-Received: by 2002:a17:90a:da8e:b0:2ee:bf84:4fe8 with SMTP id
 98e67ed59e1d1-2f452ec6ee0mr60726108a91.30.1735664569720; Tue, 31 Dec 2024
 09:02:49 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com> <9a0ee7f2-7b35-495f-891c-0ed9271a2f81@kylinos.cn>
In-Reply-To: <9a0ee7f2-7b35-495f-891c-0ed9271a2f81@kylinos.cn>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 31 Dec 2024 11:02:38 -0600
Message-ID: <CAHCN7x+xM13-DQ-miA7NbvY1wsr0197LQYCbLFbpur7oDf9TnQ@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: geert@linux-m68k.org, aford@beaconembedded.com, arnd@arndb.de, 
	dominique.martinet@atmark-techno.com, frieder.schrempf@kontron.de, 
	kishon@kernel.org, l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_090251_222578_34B933BB 
X-CRM114-Status: GOOD (  21.55  )
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

T24gTW9uLCBEZWMgMzAsIDIwMjQgYXQgODoxOeKAr1BNIFBlaSBYaWFvIDx4aWFvcGVpMDFAa3ls
aW5vcy5jbj4gd3JvdGU6Cj4KPgo+IOWcqCAyMDI0LzEyLzMxIDEwOjExLCBBZGFtIEZvcmQg5YaZ
6YGTOgo+ID4gT24gU3VuLCBEZWMgMjksIDIwMjQgYXQgODoxMeKAr1BNIFBlaSBYaWFvIDx4aWFv
cGVpMDFAa3lsaW5vcy5jbj4gd3JvdGU6Cj4gPj4gRklFTERfUFJFUCgpIGNoZWNrcyB0aGF0IGEg
Y29uc3RhbnQgZml0cyBpbnRvIHRoZSBhdmFpbGFibGUgYml0ZmllbGQsCj4gPj4gYnV0IHRoZSBp
bmRleCBkaXYgZXF1YWxzIHRvIDQsaXMgb3V0IG9mIHJhbmdlLCB3aGljaCBnY2MKPiA+PiBjb3Jy
ZWN0bHkgY29tcGxhaW5zIGFib3V0Ogo+ID4+Cj4gPj4gSW4gZnVuY3Rpb24g4oCYZnNsX3NhbXN1
bmdfaGRtaV9waHlfY29uZmlndXJlX3BsbF9sb2NrX2RldOKAmSwKPiA+PiBpbmxpbmVkIGZyb20g
4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0Cj4gPj4gZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgo+ID4+IC4vLi9pbmNsdWRl
L2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6NTQyOjM4OiBlcnJvcjogY2FsbCB0byDigJhfX2NvbXBp
bGV0aW1lX2Fzc2VydF81MzjigJkKPiA+PiBkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjog
RklFTERfUFJFUDogdmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKPiA+PiAgICA1NDIgfCAg
X2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRf
LAo+ID4+IF9fQ09VTlRFUl9fKQo+ID4+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBeCj4gPj4gLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1
MjM6NDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZgo+ID4+IG1hY3JvIOKAmF9fY29tcGlsZXRpbWVf
YXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsKPiA+PiAgICAgICAgfCAgICBe
fn5+fn4KPiA+PiAuLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjU0MjoyOiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiA+PiDigJhfY29tcGlsZXRpbWVfYXNzZXJ04oCZCj4g
Pj4gICAgNTQyIHwgIF9jb21waWxldGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGls
ZXRpbWVfYXNzZXJ0XywKPiA+PiAgIF9fQ09VTlRFUl9fKQo+ID4+Cj4gPj4gUmV3b3JrIHRoaXMg
c28gdGhlIGZpZWxkIHZhbHVlIHdoaWNoIGlzIHJlc3RyaWN0ZWQgdG8gdGhlIHJhbmdlIG9mIDAg
dG8gMywKPiA+PiBzbyBidWlsZCBlcnJvciB3aWxsIGZpeC4KPiA+Pgo+ID4+IEZpeGVzOiBkNTY3
Njc5ZjJiNmEgKCJwaHk6IGZyZWVzY2FsZTogZnNsLXNhbXN1bmctaGRtaTogQ2xlYW4gdXAgZmxk
X3RnX2NvZGUgY2FsY3VsYXRpb24iKQo+ID4+IFNpZ25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFv
cGVpMDFAa3lsaW5vcy5jbj4KPiA+PiAtLS0KPiA+PiAgIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9w
aHktZnNsLXNhbXN1bmctaGRtaS5jIHwgMiArLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+ID4+IGluZGV4IDVlYWM3MGExZTg1OC4uM2U0ZDFh
NTE2MGVhIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNh
bXN1bmctaGRtaS5jCj4gPj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ft
c3VuZy1oZG1pLmMKPiA+PiBAQCAtMzQxLDcgKzM0MSw3IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5
X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHks
Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4+ICAgICAgICAgIH0KPiA+
Pgo+ID4+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiks
IHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPiA+PiArICAgICAgIHdyaXRlYihGSUVMRF9QUkVQ
KFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgPT0gNCA/IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJlZ3Mg
KyBQSFlfUkVHKDEyKSk7Cj4gPiBUaGUgZm9yLWxvb3AgYWJvdmUgdGhpcyBsaW5lIHN0YXRlczog
ICBmb3IgKGRpdiA9IDA7IGRpdiA8IDQ7IGRpdisrKQo+ID4gSG93IGNvdWxkIHRoaXMgZXZlciBy
ZWFjaCA0PyAgSWYgaXQgZGlkIHJlYWNoIDQsIHRoZSBjYWxjdWxhdGlvbiBmb3IKPiA+IGludF9w
bGxjbGsgd291bGQgbmVlZCB0byBiZSByZWNhbGN1bGF0ZWQgc2luY2UgaW50X3BsbGNsayA9IHBj
bGsgLyAoMQo+ID4gPDwgZGl2KTsKPgo+IHllcywgeW91IGFyZSByaWdodCxtYXkgYmUgbmV2ZXIg
cmVhY2ggNCxzbyBkaXYgLSAxIHdpbGxlIGZpeCBGSUVMRF9QUkVQCj4KPiBidWlsZCBlcnJvci4K
Pgo+ICNkZWZpbmUgUkVHMTJfQ0tfRElWX01BU0sgICAgICAgR0VOTUFTSyg1LCA0KQo+Cj4gb25s
eSB0d28gYml0ICxtYXggdmFsdWUgaXMgMy4KCldvdWxkIGRvaW5nIGEgbG9naWNhbCBBTkQgb2Yg
KGRpdiAmIDB4MDMpICBtYWtlIHRoZSBjb21waWxlciBlcnJvciBnbwphd2F5PyAgSSBmZWVsIGxp
a2UgdGhlIGV2YWx1YXRpb24gb2YgY2hlY2tpbmcgaWYgZGl2PT00IGlzIHVubmVjZXNzYXJ5CnNp
bmNlIHRoZSBmb3ItbG9vcCB3b24ndCBsZXQgaXQgZ2V0IHRvIDQgYW5kIGl0IG1pZ2h0IGFkZCBh
bgphZGRpdGlvbmFsIGluc3RydWN0aW9uLgoKYWRhbQo+Cj4gdGhhbmtzIQo+Cj4gUGVpLgo+Cj4g
Pgo+ID4gYWRhbQo+ID4+ICAgICAgICAgIC8qCj4gPj4gICAgICAgICAgICogQ2FsY3VsYXRpb24g
Zm9yIHRoZSBmcmVxdWVuY3kgbG9jayBkZXRlY3RvciB0YXJnZXQgY29kZSAoZmxkX3RnX2NvZGUp
Cj4gPj4gLS0KPiA+PiAyLjI1LjEKPiA+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
