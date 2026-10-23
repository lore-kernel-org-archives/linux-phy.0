Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CBF606A319
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 00:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kJLTeYIn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=pKNB//6m
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dJOC5qVxV++zxqsoYw17iem4t0vy1+dPQX3uLNOfcWs=; b=kJLTeYInJzuLeqqdqj18mFdt4d
	AQYgXL1DLyQGs4GEmOhkRmDkwkFXoosDYApy+fDep82WQmdSoNgY5z+1HKWWmELwUdH34lW/gTaSr
	NPqEaHdwwPrMQZCS6zCyCy3owGs5JKUKa3woxtBt6nk3hQHUKEgHsbXZ2TJfhveOyg/6vjM1SwD8G
	ztqPu86DcXtFvqNk6QLk0R23XONWs50hCUqzITEczfwKybID7wIXYZk8VBcCLLS81X1R7DbCe1fMI
	j7KE8yd1yVUpeijzDCf98uZEkxn/Jz63MUao5y5wbniisj4q3Mp75j4FRFQlDg0t3TVyR7rrc9L2X
	ZLZU5dUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK2jD-0000000FCXs-1K4o;
	Fri, 23 Oct 2026 00:01:47 +0000
Received: from mail-yx1-xb136.google.com ([2607:f8b0:4864:20::b136])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK2jA-0000000FCXW-0DFC
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 00:01:45 +0000
Received: by mail-yx1-xb136.google.com with SMTP id 956f58d0204a3-679e86015e2so1719084d50.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 17:01:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792713702; cv=none;
        d=google.com; s=arc-20260327;
        b=pckE67JQIGFIyn7rGo3w4PfbZIhe8UnGZMYCTqTtUGAsESAuqN9NoRardNjJI7WGri
         NO9ViOANPs293ucMbz8sMJ4Wdd/rJsnewHmS6k1IqRUZk33Ss04bqPpVkMS9AeNXhIWz
         QXjiXDHj/T7HM04SLzgpQLY3JzSke7rXmTo3DbE9uGolybglf7NK2pyYpV4KI/cXagJJ
         l5qk4/NXBbsfpwMZDWCEUooAWnROMhBeMhQUaAS5RUB+KM+5fu+LI5TYRh0rzneobLv9
         CB9s4R3AJP9Z7PKExhqqd2S52gyZjNwlwKoaam7MkyWSrTAR05FvobTStzcc/G0TRocG
         mI+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yzq9DLiJaBumj+9b6/Tu+UJpvww2VzpZXqDN8hZnKOM=;
        fh=uwj+V+ly8G/yzPSP2tyhKK+caD9a2L2Mem1ieKJkIbU=;
        b=mvHsHdp/mO2jwAjmO1v4+xRCKsXTGO5GaSLRnsBUaWWaXiSfR35ApLCxWiDa/s6GMB
         jOfDRs+aUYbEgXLTnzT78r4piSMKAdRjteEB+ABdRMsplz4VULWcBPGfYlCyD/7uafKs
         DP2cSMhX1ThD9Ol8Z7zrrblIWSKgC/7s08OwOixaQN5Y3VB9QVeleQDdTx28sHULuKhW
         kVnSt3bQB8jYZ9barqlVi82WQzGiM9M9u+aEjVhBsek8PUuuq8LpW9PklQzEnPC1TsUO
         xIGrqf+U4lsxGuKun7fjK39ktrekIaZBD1G8j6QwA3jsKFrn9gU0QtyBg3jeqTlbR0xY
         q8UQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792713702; x=1793318502; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yzq9DLiJaBumj+9b6/Tu+UJpvww2VzpZXqDN8hZnKOM=;
        b=pKNB//6mgXWuQjA264rQEox3Ft02AD551vfA5Bu6mSbZYbNyY1SvETnZLyorucKTun
         u8Fr7xgzKvInhM+6tp/dsP6kePVK3YlMZWYRnguRBLHH8OdquXR++69ygA2JGYqymHqm
         k98oODj13QPzPfIfopGrTkyER/KI2cqN9gzGC+Yypk62vLBh/5v3kEAvZoSHv9lygmIW
         vXZa6TfdRmJtISIEoQz9miwk0zs9HKZnNfL7hBn/ul7fAvSgd89YF6UO/Kxum9hiePNV
         UhaLSFjFOtzZVhe33TSDozgY4c6gvkMGCvGW5VSvIEUYZbeiyPqBcz48GBbCp0R6GR1F
         bxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792713702; x=1793318502;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yzq9DLiJaBumj+9b6/Tu+UJpvww2VzpZXqDN8hZnKOM=;
        b=G+bhGsz20SwOHxGF+rb+3RJr0HcENgXML9qcJo6vu5OpHNbs+nqVRykqEzYs/QnIjf
         lpDsCBf6Lv0SXtstHe8d1j9890y/81l+DDOylBe64NHVkq6rf5gSYxG9uZz3cZdFpFij
         WoFqWPxTHIZL9fd677Ybl0cd9O2bsLMuuSW36JWEPeGQg6imcDTy29UHn4iF3Nokq++C
         epEuq3Orb73SYdWmhiWd9pJ5/U/0WRuLQNj1s5+uT9GbnlXd9a88XWiISsKM51XLxaMH
         o8PuxztfAC/Iz93Jl5gU8RFf3o3q2JnkN/l3W+Wy7+0qCFYtQAs8+A74oFdspJOIJVCq
         sdsA==
X-Forwarded-Encrypted: i=1; AKwUvBwqdRikEoWArrvU68uLk5uI8W7/TuWh83NMmAf8wk117pGt7/UPgTsZ0kGt5is2iCCkejJrDhGLIIg=@lists.infradead.org
X-Gm-Message-State: AFq9FYL+atm/tJctyeaBCLr1APyJPEIPGDiL75cnKmxC3gTVOmZ2QiT5
	HKGuIs0sUc0cAJBLBTpoXIZA/CPyVbYynQ0THAuIVbHj+9xmSBjnDX2seMBf4pgyf6M9xBIbkBs
	cF3Bt89/0b8F2YLtpMX7x5T9aMsJgfFw=
X-Gm-Gg: AYBFou3rIaAA1FB575VScqaBq+c5LZ/oCIkriPlfnDOiCotdv3tpXhsxw8iyZ9Eq4me
	+40Uc/P+Pq2bR/FKG184eFblkN9X4ZmcCOcH/GYxXEfNnD2Eh9Kjz9IGsAeDUNec69sYRwAeu5/
	kcHQ0CMRVy/v58eNmVJjWR9Ocz+R7n7+Vh2AYat4d/m38GVY2KY1Wk1+OGK4ZX09kYNd1Wrug4o
	rCBDXSgpm2LJzuzCXM2+d1sjWzJPokTwMeDne+jDsWAEa9+rCcQX8L3u7hX0nJAC3p9fU3md/qS
	e4YVlaMEP0hpUNilO8SWaF/WbAHZ95r4AFHWBmbd3Qw6HeQuqDzjUADM+jfekZbqFFt8k6jQMAq
	XJ7DuICcvE7B8KQmHRchiRmylKNLS2mNrPvbw
X-Received: by 2002:a05:690e:118d:b0:679:97d1:439e with SMTP id
 956f58d0204a3-67a35a6c199mr448404d50.2.1792713701951; Thu, 22 Oct 2026
 17:01:41 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <CAAnD8Rb4ZZrHFWMJayabioB_8bOHh1mqZ5LCXZz0jTNGMA7UZQ@mail.gmail.com>
 <CAAnD8RaicCmi2vk_Mna-Mfct4Ebh5dFVnKUkvVSiX6kpTB_imw@mail.gmail.com> <1ec9207e-0eb8-481b-8cad-ee6cbb31bee8@oss.qualcomm.com>
In-Reply-To: <1ec9207e-0eb8-481b-8cad-ee6cbb31bee8@oss.qualcomm.com>
From: Jeff Roach <jeff.roach0@gmail.com>
Date: Thu, 22 Oct 2026 19:01:31 -0500
X-Gm-Features: AclHuK9Ou9nMTNXaoNYaO8jx8I2A4hFZ-K0BbSc9girdNrXXWXuzQ9E4n7fnFEI
Message-ID: <CAAnD8RareQsg9tsVQ_1nVNq2dwGubni8pjKNKVVVdkydn_YX0w@mail.gmail.com>
Subject: Re: HP OmniBook X 16 (X2 Elite, Mahua): DT bring-up report and questions
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Akhil P Oommen <akhilpo@oss.qualcomm.com>, lumag@kernel.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_170144_103661_62BC8321 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBPY3QgMjIsIDIwMjYgYXQgMzoyN+KAr0FNIEtvbnJhZCBEeWJjaW8KPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPgo+IENhbiB5b3UgZ2l2ZSB0aGlzIHNl
cmllcyBhIHNob3Q/Cj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIw
MjYxMDAxLWdseW11ci1waHktdjMtdjUtMC0zODQ4YzI2MTVkNWFAb3NzLnF1YWxjb21tLmNvbS8K
PgoKVGhhbmtzLCB0aGF0IGZpeGVzIGl0LiBXaXRoIHRoZSBzZXJpZXMsIERQIGFsdCBtb2RlIHdv
cmtzIGF0IEhCUjIgb24KdGhpcyBtYWNoaW5lLgoKU2V0dXA6IFVidW50dSA3LjMuMC0yMSBrZXJu
ZWwsIHBoeS1xY29tLXFtcC1jb21ibyBidWlsdCBvdXQgb2YgdHJlZQpmcm9tIHRoZSA3LjMgc291
cmNlIHBsdXMgYWxsIDExIHBhdGNoZXMgKHBhdGNoIDQgbmVlZGVkIGEgc21hbGwgbWFudWFsCmZp
eCBmb3IgY29udGV4dCwgc2luY2UgdGhpcyB0cmVlIGRvZXNuJ3QgaGF2ZSB0aGUgVVNCNCBibG9j
aykuIEkKcmVtb3ZlZCB0aGUgbGluay1mcmVxdWVuY2llcyBjYXAgZnJvbSBtZHNzX2RwMF9vdXQv
bWRzc19kcDFfb3V0LCBzbwp0aGUgZnVsbCAxLjYyLzIuNy81LjQvOC4xIEdIeiBsaXN0IGlzIGJh
Y2suIFNpbmsgaXMgYW4gQW5rZXIgVVNCLUMKaHViIChQYXJhZGUgUFMxNzYgRFAtdG8tSERNSSkg
aW50byBhIDEwODBwIG1vbml0b3IsIG9uIHRoZSB1c2JfMCBwb3J0LgpUaGUgaHViIHJ1bnMgRFAg
b24gMiBsYW5lcyBhbmQgVVNCMyBvbiB0aGUgb3RoZXIgMi4KCi0gUGljdHVyZSBpcyBzaGFycCBh
bmQgc3RhYmxlIChiZWZvcmUgdGhlIHNlcmllczogIk5vIHNpZ25hbCIgYXQgSEJSMikuCi0gRFBD
RCAweDEwMC8weDEwMSA9IDE0IDgyIChIQlIyLCAyIGxhbmVzLCBlbmhhbmNlZCBmcmFtaW5nKS4K
LSBEUENEIDB4MjAyLTB4MjA0ID0gNzcgMDAgODEgKGxhbmVzIDAvMSBDUiArIEVRICsgc3ltYm9s
IGxvY2ssCiAgaW50ZXJsYW5lIGFsaWduZWQpLgotIE1lYXN1cmVkIHZibGFuayByYXRlIG9uIHRo
YXQgQ1JUQzogNjAuMDAwIEh6IGZvciAxOTIweDEwODBANjAuCiAgQmVmb3JlIHRoZSBzZXJpZXMs
IGF0IEhCUjIsIHRoZSBzYW1lIG1vZGUgcmFuIGF0IGV4YWN0bHkgMzAgSHouCi0gV29ya3MgaW4g
Ym90aCBwbHVnIG9yaWVudGF0aW9ucy4KLSBQbGFpbiBVU0IzIG9uIHRoZSBwYXRjaGVkIFBIWSBp
cyBmaW5lOiBhIFVTQiAzLjIgR2VuMSBzdGljawogIGRpcmVjdGx5IGluIHRoZSBvdGhlciBVU0It
QyBwb3J0IGVudW1lcmF0ZXMgYXQgNTAwME0gYW5kIHdvcmtzLgoKVGVzdGVkLWJ5OiBKZWZmIFJv
YWNoIDxqZWZmLnJvYWNoMEBnbWFpbC5jb20+ICMgSFAgT21uaUJvb2sgWCAxNiAoTWFodWEpCgpU
d28gaW50ZXJtaXR0ZW50IHRoaW5ncyBJIHNhdyBvdmVyIGZvdXIgcGx1Zy1pbnMgb2YgdGhlIGh1
YiwgaW4gY2FzZQp0aGV5IGFyZSB1c2VmdWwuIEkgY2FuJ3QgdGVsbCB5ZXQgd2hldGhlciB0aGV5
IGFyZSB0aGUgUEhZLCB0aGUgaHViLApvciB0aGUgY2FibGU6CgoxLiBPbmUgb2YgdGhlIGZvdXIg
cGx1Zy1pbnMgZ2F2ZSBubyBwaWN0dXJlLiBEUENEIDB4MTAwLzB4MTAxIHdhcwogICBzdGlsbCAx
NCA4MiwgYnV0IDB4MjAyLTB4MjA0ID0gMDAgMDAgODAgKG5vIGNsb2NrIHJlY292ZXJ5IG9uCiAg
IGVpdGhlciBsYW5lKSwgYW5kIGRwdSBsb2dnZWQgInZibGFuayB0aW1lb3V0IiwgIndhaXQgZm9y
IGNvbW1pdAogICBkb25lIHJldHVybmVkIC0xMTAiIGFuZCAiZnJhbWUgZG9uZSB0aW1lb3V0Ii4g
UmVwbHVnZ2luZyBmaXhlZCBpdC4KICAgSSBmaXJzdCB0aG91Z2h0IGl0IHdhcyBvcmllbnRhdGlv
bi1kZXBlbmRlbnQsIGJ1dCB0aGUgc2FtZQogICBvcmllbnRhdGlvbiB3b3JrZWQgb24gYSBsYXRl
ciBwbHVnLWluLgoKMi4gT24gdGhyZWUgb2YgdGhlIGZvdXIgcGx1Zy1pbnMsIHRoZSBodWIncyBV
U0IzIHNpZGUga2VwdCBkcm9wcGluZwogICBhbmQgcmUtZW51bWVyYXRpbmcgZXZlcnkgZmV3IHNl
Y29uZHMgd2hpbGUgRFAgd2FzIHJ1bm5pbmcgKCJjYW4ndAogICByZXN0b3JlIGNvbmZpZ3VyYXRp
b24gIzEgKGVycm9yPS0xMTApIiwgInNldCBodWIgZGVwdGggZmFpbGVkIiwKICAgImRldmljZSBu
b3QgYWNjZXB0aW5nIGFkZHJlc3MsIGVycm9yIC03MSIpLiBVbnBsdWdnaW5nIG9ubHkgdGhlCiAg
IEhETUkgY2FibGUgZnJvbSB0aGUgaHViIHN0b3BwZWQgaXQgd2l0aGluIGEgbWludXRlLiBPbiB0
aGUgb3RoZXIKICAgcGx1Zy1pbiwgVVNCMyBzdGF5ZWQgc3RhYmxlIGF0IDUwMDBNIHdpdGggRFAg
cnVubmluZy4gVGhlIGh1YiBhbHNvCiAgIGxvZ3MgYSAiVVJCIHN1Ym1pdHRlZCB3aGlsZSBhY3Rp
dmUiIHdhcm5pbmcgaW4gaHViX2FjdGl2YXRlKCkgZXZlbgogICB3aXRob3V0IERQLCBzbyBwYXJ0
IG9mIHRoaXMgbWF5IGJlIHRoZSBodWIgaXRzZWxmLgoKSSBjYW4gY29sbGVjdCBkcm0uZGVidWcg
bG9ncyBvciB0ZXN0IHBhdGNoZXMgaWYgZWl0aGVyIG9mIHRoZXNlCmxvb2tzIHdvcnRoIGNoYXNp
bmcuCgpUaGFua3MsCkplZmYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
