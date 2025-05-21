Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3519CC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVpAb646gW+wHpzEqj8NzsS2Q661uQIntvlAAhNAAqI=; b=2VRatDs6cMsG5m
	RIU+mctmROwX5IkdgyjYgypQlx7t92uHdlUwK3BqP2GjSiuhD4y3h5WAno6agepsVSSEsMyo0Kmjc
	X51maYAuQEgk++mfEFBueOrBrW5u2tCrnnVpPDMUpQVsVO8MFmnSZwE9kZkJ7rAbgtXHl+77KwW0H
	JOWUAGDjZGy3Bspnl71inBBIkEb6EendbDahmCYupl/45hp1QIHQ+PIk+JrnGQDICkwA7WJofLoyZ
	eDxRljznQgNFT1IhFqjE/zkaN88xqwdXOhuiZbVfs7zbIPkmf4T7OBVYn/beIcMXV4UDlxrEtkBRd
	If1eyd4sAuKcDYkSqo+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkF0-0000000G53B-40LA;
	Wed, 21 May 2025 14:16:18 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjww-0000000G19y-1t9A
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:57:39 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3108d559171so726680a91.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747835857; x=1748440657; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4V2npzngN7XE+T5CnS00fIFW0qBnhbmPIQOpJiEFacY=;
        b=Jnq4HmqY6QRcU91ar3kJXOYVZimKCDGIP/SMCWY7NYHaDSSEE+C7vH5J30fYmdmIvw
         eelzvjJRYn0dwOeMSySWoQHCWBq+JgBWnIMpKxuyAwLNHXwJryoMiZop3RwhGzUPuNkV
         iQgBU+MjlfY9B+5IXLc+QAYuqV4O+nCO5J9O+Hus/NXeqzEzULXwmsXnVohCi+uDaYFA
         I99wvggSkz1JQTssySZ+Ql+tih0+/c6ae0chq6Ky+PXZpT/aTNvk5cgyu1bByEmUMrSb
         ZB0gnyoLAHb63rYam6WJ0c5MMoS6envljFgYlWUqyvfo5254sA+nDjaA97/H67Rx7jBS
         wn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747835857; x=1748440657;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4V2npzngN7XE+T5CnS00fIFW0qBnhbmPIQOpJiEFacY=;
        b=ENQPSLpuKJ6n03Ih2DQJjHSdPhu3+kaIbQFrpn+nGohSsUWT9404gMee2tSMG9lf+3
         +H9qGL9oCRQRd6fjAZsmiNCrpAkIdIgM57qXwRDtpAk9XCpBisKQQAKQpisxs43gnWku
         jATjRE/NNyFbdlxPOEcQXVZ6ziVNm1Z8sX9FWBrdvZ1W5pKLASdloucjzPIlpMu9ixCd
         l53ApaaehZxc3QHfVZ+ALxBdHVGinejO1kW+Jn43A8430NJD8cK71PzxEyCgAUTr/6b5
         kXHFCYnmniaqcQr2Vp5NrVXmPm6fhZDiUXevLAcJCw268eF5bqlXOI3DZ0R5wtq3oFg6
         VbYA==
X-Forwarded-Encrypted: i=1; AJvYcCVQizhvYgZ94Y+vP9BBFK/a+uXfH4Pmz+560yPJB7meQPkM3XUZ51uMZctdqxp8NvbAi7mWc1EoRss=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0LzcDJyarHsGVorPNof+2J7mCMssQzNcM2MuR1v7eezWWnm6g
	5gN7g+rqAOPflH4IuTIeZhVY69e47C3PNKMEGasOhaE9oH6MNYVqDFFTY4XHARthMA==
X-Gm-Gg: ASbGncu06USyIKJyQjBMI3x5QOQ35aUZ6o8dbdVzQEy9I6pko1WGqw/tOiNfXqfTw9p
	pjf1o1Po2GLRxrXAhX7tSVngDIiV+QSFuV9iXxTsLQKXr6OFD6Bb18DMFAhHHZmExicItStzJU3
	pFd1LEULDCHOZNY0lXF4iKusaYFQ6MN+hjIZEyBDzh+ttg2BjUYA0/4p86twu6nmMR7hR1703zd
	K1vZEXk/mox7Y9959E1m1wrh46gxbNEsRy5VhVygm3W1GSU0jkCYhJJrz1/ewaXb4CHU1UtTvxj
	qoHUy8l7bX2ylLjg/PDu4fbwMp4+U3F5QwMSRgFG3jw6KilezRfN8Z3BsbXb
X-Google-Smtp-Source: AGHT+IHRB6a4p+x/fLfJd+xB4iokXTvEugUEwgXrmK670XBatNkGHNJpzX5R1He9NQDvMhn300VvPg==
X-Received: by 2002:a17:90b:56cc:b0:30e:3338:8c0e with SMTP id 98e67ed59e1d1-30e7d5a8b5amr30665302a91.27.1747835857527;
        Wed, 21 May 2025 06:57:37 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f365b22b5sm3663633a91.5.2025.05.21.06.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:57:37 -0700 (PDT)
Date: Wed, 21 May 2025 14:57:31 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 09/11] scsi: ufs: qcom : Refactor phy_power_on/off
 calls
Message-ID: <knlhbl3mwo3b7xc4rjp4y7yka2nwythumjacmvn236v72ykddo@r3cp2w4uomol>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-10-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-10-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_065738_492813_D9893355 
X-CRM114-Status: GOOD (  18.34  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MjBQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gQ29tbWl0IDNmNmQxNzY3YjFhMCAoInBoeTogdWZzLXFjb206IFJlZmFjdG9yIGFsbCBp
bml0IHN0ZXBzIGludG8KPiBwaHlfcG93ZXJvbiIpIHJlbW92ZXMgdGhlIHBoeV9wb3dlcl9vbi9v
ZmYgZnJvbSB1ZnNfcWNvbV9zZXR1cF9jbG9ja3MKCnMvcmVtb3Zlcy9tb3ZlZAoKPiB0byBzdXNw
ZW5kL3Jlc3VtZSBmdW5jLgo+IAo+IFRvIGhhdmUgYSBiZXR0ZXIgcG93ZXIgc2F2aW5nLCByZW1v
dmUgdGhlIHBoeV9wb3dlcl9vbi9vZmYgY2FsbHMgZnJvbQo+IHJlc3VtZS9zdXNwZW5kIHBhdGgg
YW5kIHB1dCB0aGVtIGJhY2sgdG8gdWZzX3Fjb21fc2V0dXBfY2xvY2tzLCBzbyB0aGF0Cj4gUEhZ
IHJlZ3VsYXRvcnMgJiBjbGtzIGNhbiBiZSB0dXJuZWQgb24vb2ZmIGFsb25nIHdpdGggVUZTJ3Mg
Y2xvY2tzLgo+IAo+IFNpbmNlIHBoeSBwaHlfcG93ZXJfb24gaXMgc2VwYXJhdGVkIG91dCBmcm9t
IHBoeSBjYWxpYnJhdGUsIG1ha2UKPiBzZXBhcmF0ZSBjYWxscyB0byBwaHlfcG93ZXJfb24gYW5k
IHBoeV9jYWxpYnJhdGUgY2FsbHMgZnJvbSB1ZnMgcWNvbQo+IGRyaXZlci4KPiAKClRoaXMgcGF0
Y2ggaXMgbm90IGNhbGxpbmcgcGh5X2NhbGlicmF0ZSgpLgoKPiBDby1kZXZlbG9wZWQtYnk6IENh
biBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDYW4gR3VvIDxx
dWljX2NhbmdAcXVpY2luYy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNf
bml0aXJhd2FAcXVpY2luYy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20u
YyB8IDYxICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+IAoKWy4uLl0KCj4gIHN0
YXRpYyBpbnQgdWZzX3Fjb21fc2V0dXBfY2xvY2tzKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGJvb2wg
b24sCj4gIAkJCQkgZW51bSB1ZnNfbm90aWZ5X2NoYW5nZV9zdGF0dXMgc3RhdHVzKQo+ICB7Cj4g
IAlzdHJ1Y3QgdWZzX3Fjb21faG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+
ICsJc3RydWN0IHBoeSAqcGh5ID0gaG9zdC0+Z2VuZXJpY19waHk7Cj4gKwlpbnQgZXJyOwo+ICAK
PiAgCS8qCj4gIAkgKiBJbiBjYXNlIHVmc19xY29tX2luaXQoKSBpcyBub3QgeWV0IGRvbmUsIHNp
bXBseSBpZ25vcmUuCj4gQEAgLTExNTcsMTAgKzExNDEsMjIgQEAgc3RhdGljIGludCB1ZnNfcWNv
bV9zZXR1cF9jbG9ja3Moc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbiwKPiAgCQkJCS8qIGRp
c2FibGUgZGV2aWNlIHJlZl9jbGsgKi8KPiAgCQkJCXVmc19xY29tX2Rldl9yZWZfY2xrX2N0cmwo
aG9zdCwgZmFsc2UpOwo+ICAJCQl9Cj4gKwo+ICsJCQllcnIgPSBwaHlfcG93ZXJfb2ZmKHBoeSk7
Cj4gKwkJCWlmIChlcnIpIHsKPiArCQkJCWRldl9lcnIoaGJhLT5kZXYsICJwaHkgcG93ZXIgb2Zm
IGZhaWxlZCwgcmV0PSVkXG4iLCBlcnIpOwo+ICsJCQkJcmV0dXJuIGVycjsKPiArCQkJfQo+ICAJ
CX0KPiAgCQlicmVhazsKPiAgCWNhc2UgUE9TVF9DSEFOR0U6Cj4gIAkJaWYgKG9uKSB7Cj4gKwkJ
CWVyciA9IHBoeV9wb3dlcl9vbihwaHkpOwo+ICsJCQlpZiAoZXJyKSB7Cj4gKwkJCQlkZXZfZXJy
KGhiYS0+ZGV2LCAicGh5IHBvd2VyIG9uIGZhaWxlZCwgcmV0ID0gJWRcbiIsIGVycik7Cj4gKwkJ
CQlyZXR1cm4gZXJyOwo+ICsJCQl9Cj4gKwo+ICAJCQkvKiBlbmFibGUgdGhlIGRldmljZSByZWYg
Y2xvY2sgZm9yIEhTIG1vZGUqLwo+ICAJCQlpZiAodWZzaGNkX2lzX2hzX21vZGUoJmhiYS0+cHdy
X2luZm8pKQo+ICAJCQkJdWZzX3Fjb21fZGV2X3JlZl9jbGtfY3RybChob3N0LCB0cnVlKTsKPiBA
QCAtMTM0Myw5ICsxMzM5LDEwIEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21faW5pdChzdHJ1Y3QgdWZz
X2hiYSAqaGJhKQo+ICBzdGF0aWMgdm9pZCB1ZnNfcWNvbV9leGl0KHN0cnVjdCB1ZnNfaGJhICpo
YmEpCj4gIHsKPiAgCXN0cnVjdCB1ZnNfcWNvbV9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJp
YW50KGhiYSk7Cj4gKwlzdHJ1Y3QgcGh5ICpwaHkgPSBob3N0LT5nZW5lcmljX3BoeTsKPiAgCj4g
IAl1ZnNfcWNvbV9kaXNhYmxlX2xhbmVfY2xrcyhob3N0KTsKPiAtCXBoeV9wb3dlcl9vZmYoaG9z
dC0+Z2VuZXJpY19waHkpOwo+ICsJcGh5X3Bvd2VyX29mZihwaHkpOwoKVGhpcyBjaGFuZ2UgaXMg
bm90IGF0IGFsbCBuZWVkZWQuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
