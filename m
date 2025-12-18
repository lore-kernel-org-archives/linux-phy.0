Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10557D6E2CA
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 18:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piYUSGZbW4a8qZQiziFIfq6NDD8tWKTfFFN8+nXYM3A=; b=3tkClbUnhIyxZM
	eFhv1kCeoVqQmVMnaGkXeuwy401/C7+ovBQYIs0gnMsqhzVgci0s+NqbTD37JMhY+Qczbu9+UxCN1
	/tFrIpcic3SgLUFdwOxS8R0P7srdgUzp7V+6GM0dU2U2bBWB3PaYaQKIKpV0Y5WijF4m4kDck1nzn
	fiSzwUr4F4ThsV6Mqkc6KVjaV8pXrgaTikacLb6+Z+03UYfLIdESsknIC6K9Ucc2BBlZ1uKkuMpEV
	HwKwlGmKEHvCeTlsjcE5JCB1ZmwvmpihmLbesGDrfYeY4l4byBnewUhJ0euAzoj1YfKxYF6rMRiQp
	86/a/ZHP9zqHGGiTuq1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWIz1-00000009046-1zMw;
	Thu, 18 Dec 2025 18:44:15 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWIyz-0000000903h-3NCy
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 18:44:14 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-598efcf3a89so978623e87.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 10:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766083451; x=1766688251; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UcGggCJU/gQmM5MZ61Xq/8KY3VcjY+5Aob9fWERvdY=;
        b=axRaBvfCa8UHWOJt4lZEcyfbHcwORhR0EO67jESk8NIaO0bVzfvvj6cCHqq3mJ63aO
         yicAO7EI8obpzBQBSWGJR/QRgPemaT7hJ/L14nBpwd097wwPsJakIEuXRaM1y3o8SdWy
         Buu3adHPvm9aWL6BszhuxetjyzzjVhF+pjDJWxYF+TOn0E8pddZrRG5HuXAFiWZs9fIX
         Lx8axNib+1+509p1s+OkA4O/zzJsNoENlJeXMzdAshmGvILfCjuEMoToq0FOi/iylK6H
         AyZviYqX/dKbkElV3vFQ/xYbu7a8ZxT9OZ7I1wKJ5qrch0SF4b82Ba9lJbUDuitvaZCe
         8TSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766083451; x=1766688251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UcGggCJU/gQmM5MZ61Xq/8KY3VcjY+5Aob9fWERvdY=;
        b=E5z3Nc5WcK61eqUlbmB0h5PG4VmS1Ad+f4GYON56luysXDgbUXJ8BEhmtWmhV9+c3e
         wWi0MzuBfWzp0hPbe+fzRWErPRmOf0glCR7lX7mqKmkOo6NPSUM2V3ynqbb+KkHWRJDN
         FN7myIZkxd3ATF6WM3eNUxECWC8mWcwHapzHAYO6ZQ5pao+ZIaCBDOhom0KLoPybxiuZ
         sqo2QQjZq0qLkfm8YMr7DWT6hk86vmHZggbIt9qBKc58nyAwNReyNLF4FHIsawOuuuYr
         5YuldYG/rqQKbdG7axS+/QETnvjqc/Jw+1Dxc1YDt4DEZJE0nXFZ7dEpclEBJoGnKq2S
         kwkg==
X-Forwarded-Encrypted: i=1; AJvYcCW7uCJg2ZzW/zZdEc2dJw7562s+ANYTYN950P+NPgpQ0lfLmg4qCCU82p2oQJQomUHb1hx+oW7C4o8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxS8rjpi3QkVoAKJY+gm8gnSKJPxdXh/1L+kwivA6iCVTk39FrI
	tYlwfGfWi2AXEZVjf0mHesNmTVexLlSbJ6ekB0JfEfd6OBX1uICtdqlY3dxuD1DG8Z26rOqJjbr
	+aPHjxV6iBqinqw9kJ+rZFMBLsqSUtrPBnm9/
X-Gm-Gg: AY/fxX7vXAdoE87l0A7BDgIi3qcDEYIAQcdsFi+N52Y+iq1P/Ss/QNeuK1WPgP1cNtc
	91DBFloZ3OvvdSM76MSZUjeFVN+LYpbJvi5Qgh2vHPD19sy42QtyNCW6AWQ2ZdxzIhoLUx8vmhv
	l3CrQn6N+FrFjLOV51dY0hoRoWhz7U4UUtL9O897KygcH9Mvu5Ej64E0GAN2TboMKmDOn2rj06A
	cvRZGEkIe9anWrXOVUYUvjkk839LmoKWDzv+UAX01eWQj2nxUtKn0Q6JljX9WOvpZDcP65E3+BY
	v02/9C8m8mDA6lZ1C/SDYQLhiLU=
X-Google-Smtp-Source: AGHT+IFy6VXe0oYcT9AL7PKkkyZuOK/cOJtVaqtyyEXq3TUGm24XPb1fiNFmYHhvBLxZ0/hxZJK5A8dV3Kok55pUhAs=
X-Received: by 2002:a05:6512:3d92:b0:598:f96f:af0 with SMTP id
 2adb3069b0e04-59a17d74c9dmr176519e87.7.1766083451115; Thu, 18 Dec 2025
 10:44:11 -0800 (PST)
MIME-Version: 1.0
References: <20251218174920.359282-1-stefano.r@variscite.com>
In-Reply-To: <20251218174920.359282-1-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 18 Dec 2025 15:43:59 -0300
X-Gm-Features: AQt7F2oT3yekYwkg8Q3KFC57cWD5deIGE6pmkCwOIalUzjXuivrTkNyg9wjaQnw
Message-ID: <CAOMZO5BGtgDemQeLvJ+hjY+zBtpFLp=pkpD9js0SfknE4fHd4w@mail.gmail.com>
Subject: Re: [PATCH v1] phy: fsl-imx8mq-usb: Fix PCS_TX_SWING_FULL register configuration
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, j.zink@pengutronix.de, 
	linux-kernel@vger.kernel.org, xu.yang_2@nxp.com, jun.li@nxp.com, 
	Frank.Li@nxp.com, haibo.chen@nxp.com, linux-phy@lists.infradead.org, 
	imx@lists.linux.dev, Stefano Radaelli <stefano.r@variscite.com>, 
	Pierluigi Passaro <pierluigi.p@variscite.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104413_870528_4E7C3683 
X-CRM114-Status: UNSURE (   6.94  )
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

SGkgU3RlZmFubywKCk9uIFRodSwgRGVjIDE4LCAyMDI1IGF0IDI6NTDigK9QTSBTdGVmYW5vIFJh
ZGFlbGxpCjxzdGVmYW5vLnJhZGFlbGxpMjFAZ21haWwuY29tPiB3cm90ZToKPgo+IENsZWFyIHRo
ZSBQQ1NfVFhfU1dJTkdfRlVMTCBmaWVsZCBtYXNrIGJlZm9yZSBzZXR0aW5nIHRoZSBuZXcgdmFs
dWUKPiBpbiBQSFlfQ1RSTDUgcmVnaXN0ZXIuIFdpdGhvdXQgY2xlYXJpbmcgdGhlIG1hc2sgZmly
c3QsIHRoZSBPUiBvcGVyYXRpb24KPiBjb3VsZCBsZWF2ZSBwcmV2aW91c2x5IHNldCBiaXRzLCBy
ZXN1bHRpbmcgaW4gaW5jb3JyZWN0Cj4gcmVnaXN0ZXIgY29uZmlndXJhdGlvbi4KClRoZSBjaGFu
Z2UgbG9va3MgZ29vZCB0byBtZSwgYnV0IHRoZSBTdWJqZWN0IGlzIGEgYml0IG1pc2xlYWRpbmcu
CgpJdCBnaXZlcyB0aGUgaW1wcmVzc2lvbiB0aGF0IFBDU19UWF9TV0lOR19GVUxMIGlzIGEgcmVn
aXN0ZXIuCgpXaGF0IGFib3V0OgoKcGh5OiBmc2wtaW14OG1xLXVzYjogQ2xlYXIgdGhlIFBDU19U
WF9TV0lOR19GVUxMIGZpZWxkIGJlZm9yZSB1c2luZyBpdAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
