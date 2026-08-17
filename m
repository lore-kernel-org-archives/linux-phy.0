Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3711EC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 23:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZ5RI0IASF4gPuf+v2uecvVxKnZ/IEJpQuhLbXzSBMs=; b=Dsdy6tO7tkK5Ue
	/iqnSKNbPPy13QEu+6STYXlr3VbUVRd0AxNBZcCcAkjt0VBwypMnnmQQH9JkHnhRT1kodhaKpr6YY
	jgOy6EYKlIkdQb4RvDNgYQXZS/bQRcUeLB17bekd4Cuqgm4MN01spUH//eLvecdeaamCDwQwIbccu
	aKhO+JKO3Z0O1/UZsT4Rn4V7w7sNGKmwCrbNUX1s50Frn6Oli/7doyX8A2Aq/30TsAcWqo12BFltW
	oCeTinuCEd2cPPh/niEVj6W6njdFr+1TYKlnixIoFmhP1NDHN41gs4mJenOLNXN92tecpDSOBUo9s
	svhIpYxd3l/abzI2FXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6iL-00000006yoP-3NsT;
	Mon, 17 Aug 2026 23:25:57 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww6iI-00000006yo3-3kcO
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 23:25:56 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-69f4acf7047so599670a12.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 16:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787009153; cv=none;
        d=google.com; s=arc-20260327;
        b=PksobMIO8VyvJ+GzcuddsKPlf8K8gCk8ZgJmiFdao2o0nfO4hwbLIrYDo83FvVsC6c
         tRlbcm+Zwzh6jMy0k2cH4TvirhqeocsJmhxO9POuK0c8BxcH/wFuBHfcu0Lgk4KeNzUv
         JfKfABcYOx34EmbiCzb3b06Z3QY+bGuSRbxHU9FlJIRqLl1eMA4ZDUqvQ35bOHvHnqdu
         EvXA9MujgHCQVif6VKKEVrWJVqYn8KUb3WfVIvQ/VQLgEbPFo4aLa00Hj0zZox634v6S
         j45TKORk6Fix1chJMJ7BcDGJUnF12yBMiT+EESLxvOG3Ig6GELWMjvwPRqUr6oW2jZZM
         Llew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g1AzLZyhhmggt5mRW1QxTaJqgkbHRAIppDxF6F5qNoA=;
        fh=ux4PZkqlAMiBhXjM3N/oRNRg5ersaBAOHiPNyD4MEQw=;
        b=sYsS8T+x7KkXHba+KlqluTGxvLgs6eVb0JaF25d13+LDuGKvn8oOmpy3e1DfnckTvp
         dhVMDfhnDKu1gwGE1EN9gQikgxn3x+syXji47PXJuf20w4ZBe3gizKwfejHCSNZZvBRj
         MPHRlm/T5kRflxbBP8GZ6ZGLdZQgFVSSRb/5fBy0KgWUnqS1Z2VrKGSj2BwQo9dlMT1g
         0coGyWRLn/XTnh8szDBCqA6ZxsgJOmngcBaZqy4kXXzyRku6G7XLYzzaBtZHxPJmcRmY
         oI0RZrP54ogjDhIZnaIzmRW+D2TvddUAqNQf3ATmQ68K1KHzfKKWfSrT6ZbmNZ9J2Yxp
         LCRw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787009153; x=1787613953; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g1AzLZyhhmggt5mRW1QxTaJqgkbHRAIppDxF6F5qNoA=;
        b=TVw2XLmYlPpbQRllnVTpG8y7Q24j+RnojXP1PPjZR5hKfLKFTAvnHpgBHri0UcXLyt
         MATpVTLmL1YtTOfEY6shOBgFyPLW9O2xL3tGT0bJIrb16/Ri5h82kgNa8JDjqGKxykZu
         SdGxFELK6rAeAGKaEd5g6iTV4BsQa/VPveHRxsZM5YA67wThQ/dGzp8DDfTl9+osT+Lz
         bs8kEm1WBhWfe5en9ez9Hdgo86CrY5CrpAOqixfruokNFGTbP8vQRFiKitGr9I7M3ACZ
         AaU22xu6VTQ/o+8FiswGSzfiEnBCPGQ6qy5+oCzYRRFI81DFwQaz8hiARBW8F+17gfff
         mbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787009153; x=1787613953;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g1AzLZyhhmggt5mRW1QxTaJqgkbHRAIppDxF6F5qNoA=;
        b=j70SYzNm+gohsW57H1q2hdhV7oavzdFPlgACCw/glwqEonlBSADx9xeQQ6gspH/1YE
         Cs2hKaDPvfqIZAhRTCObZyl2cqP/Ss4ibl1VDof1pPXYxu82f5D28jtyNxuhkZHNmJq3
         zW27V/PJdEvo64CovgFlbaptsgGgM8Gi4spu160AhyFSW7rg5Qtrj2RDVnx9PCF+J4wR
         R9oD3pmSjOfg+4BpjXEjECdhRZBSgdMJdbzjD4zqZMJ5quV9bnjsGmIiRTH+mRL2q3Fc
         sF492EccPFi+TbgDsjFg6noIJzx/w9ySzCPE9FS2tqb1fVgZR0HJ1114q8u390S4GIy7
         kWOQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp6QwwNVd4cVj0zMV6qHfGQsWTNA/B/woHDN/+NaSn1N6CjFlmDbNPt0fZMakBl5hIj3T9LR/zCc98=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLYr9fwHuT0h9Yj/mvdkjXhXIkyvUNRq3oQIH31Gn+myNOoFzR
	UAG5QMIEZPjP+ptvqkWv70V+GSEq7IBgJEO07QePff8MjyFPqYm5hCI8xouQA8oOxoTEw3hldGy
	uUuW/EaUDGN475iIANQpm5NHykpTUJxw=
X-Gm-Gg: AR+sD11BGQdYdZpKm9dI3SdiChwTMLUO9uu5BQw6jRNxEp1LF2eGZQDSo/YL1E3HCFG
	T4mAc9myx9wmOMK0Ob9HGBQ9q3Cxx0oTnJJo2d7mREm51F3HCjrRPMv4mMoBosny8T7wyVy8uEE
	MWlec+spy0irAqxFfkyxD9ekfF43vwn6J1MgJJJNdnvGXw3cACg2G5gZpKvuya26dVZgvAX5Wgn
	cCYciHIWFvhxjvu6y8m+lmQDF3SssB7kP9nQpzNvG4/61NfHz1wq3ySgVvxgbCp1X7E5g8FwS0i
	bpwlIjKUktBMaJKy3225Wft1oBlhIWFARJDMnr9Mb9sU
X-Received: by 2002:a17:907:c1f:b0:c12:e4f7:9a0 with SMTP id
 a640c23a62f3a-c212a17c930mr646591966b.2.1787009152807; Mon, 17 Aug 2026
 16:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-1-69ac5f92df45@gmail.com> <20260817215829.AB4321F00A3A@smtp.kernel.org>
In-Reply-To: <20260817215829.AB4321F00A3A@smtp.kernel.org>
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 04:55:41 +0530
X-Gm-Features: AcwNN1W_ixQgq_Zd-BIBGZqubOpNe4fyzSrpTQJ0Cu1HvNeHF6H9Fw8rcF7uO0c
Message-ID: <CAOWyW_4YmQ=Dkd9Wr57wxCfWJKmFVOA7BL9fkTiu7NcL=gFFtA@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: dma: ti,cppi41: Convert to DT schema
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, 
	linux-phy@lists.infradead.org, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, 
	olteanv@gmail.com, Frank.Li@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_162554_955592_91ABC6E8 
X-CRM114-Status: UNSURE (   8.18  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBBdWcgMTgsIDIwMjYgYXQgMzoyOOKAr0FNIDxzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1
bV0gVGhlIG5ld2x5IGFkZGVkIGRlcHJlY2F0ZWQgcHJvcGVydGllcyBgI2RtYS1jaGFubmVsc2Ag
YW5kIGAjZG1hLXJlcXVlc3RzYCBsYWNrIGEgdHlwZSByZWZlcmVuY2UsIHdoaWNoIHdpbGwgY2F1
c2UgYGR0X2JpbmRpbmdfY2hlY2tgIHRvIGZhaWwuCmFueXRoaW5nIHRoYXQgc3RhcnRzIHdpdGgg
IyBkdHNjaGVtYSBhbHJlYWR5IGRlZmluZXMgdGhpcyBhcwpzaW5nbGUtY2VsbCBzbyBubyBuZWVk
IGZvciBhbnkgJHJlZgoKPiAtIFtNZWRpdW1dIFRoZSBgaW50ZXJydXB0c2AgcHJvcGVydHkgaXMg
c3RyaWN0bHkgcmVxdWlyZWQgYnkgdGhlIGhhcmR3YXJlIGFuZCBkcml2ZXIgYnV0IGlzIG1pc3Np
bmcgZnJvbSB0aGUgZ2xvYmFsIG9yIHZhcmlhbnQtc3BlY2lmaWMgYHJlcXVpcmVkYCBsaXN0cywg
d2hpbGUgYGludGVycnVwdC1uYW1lc2AgaXMgcmVxdWlyZWQgd2l0aG91dCBgaW50ZXJydXB0c2Au
CnllcyAsIHdpbGwgZml4IGluIHYyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
