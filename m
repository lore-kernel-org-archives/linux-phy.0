Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46901D6DDD7
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 06:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8jYioctA+qjeiCSKKsnqjhHVFu27REO31rvTxPnAdE=; b=uZz5s75mbHLR4g
	5J2VPNsGl2cTmALkaHyjttY9DcLJZP7yMDfXqQpO1bbP2V/xWZmUrwMODIAm8L53Gu4rWOWWDZp5G
	1a5CwsMinC8igDL4MMyo7ztRITY4Mfk4+/crpjFsSj6p5BWYZaznLiarnJ2QMJ0F7fzyqxz5nxe/a
	LWOp3dJ2kQSWncEnRSQWL3gzQIrb7PTGhr2+SFH+qKteyw79gAhxRHYx59zQGEYbCpmJrzcggUQ4r
	SF9OWgRM8RZGVPxh6fxI3Plxh4BPR8Lzb/ikvPicZDOEpGbHAdh2lR9VwhBdnqNcfIq5ezwgbUYU9
	UBbd+cCkSEbXi4TMRTAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBq6f-00000001pcy-02N5;
	Fri, 15 Nov 2024 06:47:01 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBq6d-00000001pcV-24sM
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 06:47:00 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-71e5a62031aso1148575b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 22:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731653218; x=1732258018; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G/BfAHb1ZSMqVdqDSvsNC7xvx5+b5HvV8VHYR/A40J0=;
        b=xLKn3tjxxL/su1Si345IrMoyzBV842Axr5g/TELHWDUWpSHvfzI5K38WvsLyC7fqCN
         L8mwdx0Ukz18nKg5U4ZQWsxSiYHrpuIVDdip4S3TuaaXk3MgMxT/1rHEiJ75j9mnln5/
         otK1BNnmJGgZeDl+QMYQ4Jy7vUO4V3ZbHILK+WBe+5IviiS9JHKXXfFt98rh07B9meq4
         XhDW3peyyi0hTU26QHmG0XGwzDbfbjC4G0zb/eWzvkJBGPKuddyKTunK69xO1Y62bCrK
         ZsHx0U+79r0LS9ijqiY9kg/z7xi/bjdSV81IKTKrzHfB+4yV0FR6lz/ATNkFcMrE5TSg
         +ewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731653218; x=1732258018;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/BfAHb1ZSMqVdqDSvsNC7xvx5+b5HvV8VHYR/A40J0=;
        b=Knk/Zye0Aadn8BZ+LoZO5p4k2yeuzG04rMemb6b0M2aLWx1IxkMCvAbZuBsUI5wPkL
         QImQs+3J1mDfrGAg0UiVApqBcUrEzCXhgWWoBDKHDxqMveWcUKAs9k37pgxNo/jJ8yTN
         39XIqrmT8d3KnaTJhELPiHpRNScGxl1jFHUjKCwI+aaVUNUvVt5x6IrDXQ1aiSpOalG3
         VvALoz8ELUvIGeb0KtFIZNA5bufuAKPXLUW4soiqC/zqq6Jg9h8UxUhjw90vg8hwAN09
         ZYVT7C7Gu8Ng5mXfHhS7IwzVGumVDrL5WjswRtXkOTGmsoHn959CHm7DQMR+yC3YqvKA
         IASA==
X-Forwarded-Encrypted: i=1; AJvYcCVoN3m1V3PiaVu4jxN99XoDantfN3jyi0wiyxnVpqt0g8lGDMMHRIpQFIor2REkja4EdxDD3kHwR/E=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywm/z11LT7LiQRqlyCCLQcgV9l0QEdmqn97rREx/GfepVfH38ia
	rTwfu5T+HMj/T2JPR0U6g6YAquTcfyCxduD7f8orZOMUeVvuU4Tsrr1c+3XjbQ==
X-Google-Smtp-Source: AGHT+IG7g6V+GncMskJmi31sl11CTfqGguPy66PiWd2w8mZ74T+uGZMa+rDBHSDEHgff9qIU3c4ZGw==
X-Received: by 2002:a05:6a00:2309:b0:71e:1722:d019 with SMTP id d2e1a72fcca58-72476e7b88emr2343975b3a.22.1731653218397;
        Thu, 14 Nov 2024 22:46:58 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724770eef26sm661670b3a.33.2024.11.14.22.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:46:58 -0800 (PST)
Date: Fri, 15 Nov 2024 12:16:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org, bhelgaas@google.com,
	kw@linux.com, lpieralisi@kernel.org, quic_qianyu@quicinc.com,
	conor+dt@kernel.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
Message-ID: <20241115064648.7ugkijhsobc4gcda@thinkpad>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <a02925d7-2d09-4902-97e4-5e7f09d7ef21@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a02925d7-2d09-4902-97e4-5e7f09d7ef21@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_224659_536877_9EBA52B2 
X-CRM114-Status: GOOD (  10.65  )
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

T24gVGh1LCBOb3YgMTQsIDIwMjQgYXQgMDI6MDI6NDhQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKClsuLi5dCgo+ID4gKwo+ID4gKwkJCXBjaWVwb3J0MDogcGNpZUAwIHsKPiA+ICsJCQkJ
ZGV2aWNlX3R5cGUgPSAicGNpIjsKPiA+ICsJCQkJcmVnID0gPDB4MCAweDAgMHgwIDB4MCAweDA+
Owo+ID4gKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwzPjsKPiA+ICsJCQkJI3NpemUtY2VsbHMgPSA8
Mj47Cj4gPiArCQkJCXJhbmdlczsKPiA+ICsJCQkJYnVzLXJhbmdlID0gPDB4MDEgMHhmZj47Cj4g
PiArCQkJfTsKPiAKPiBBcmUgeW91IGdvaW5nIHRvIHVzZSB0aGlzPyBJZiBub3QsIHBsZWFzZSBk
cm9wCj4gCgpBYnNvbHV0ZWx5IG5vdCEgVGhpcyBkZXNjcmliZXMgdGhlIElQIHRoYXQgaXMgcHJl
c2VudCBpbiB0aGUgU29DIGFuZCB0aGF0IElQIGlzCmJlaW5nIHVzZWQuIFlvdSBjYW4gaG93ZXZl
ciBrZWVwIGl0IGRpc2FibGVkIGluIHRoZSBzb2MuZHRzaSBhbmQgZW5hYmxlIGluIGJvYXJkCmR0
cyB3aGVuIFBDSWUgY29udHJvbGxlciBpcyBlbmFibGVkLgoKTW9yZW92ZXIsIEkgcGxhbiB0byBt
b3ZlIHRoZSBzbG90IHN1cHBsaWVzIHRvIHRoaXMgbm9kZSBzb29uLCBzbyBpdCB3aWxsIGJlCnVz
ZWQgbW9zdGx5LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
