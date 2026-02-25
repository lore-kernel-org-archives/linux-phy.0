Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 986A4F357D5
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 07:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vyvrl8OIXASubVEq8NLC87LYBK78UPIKAO/2YHIiZI=; b=eHy1IEQ0aIU43R
	PVlaTKi9ZHwJ9VuR/wyIXU54/H7rP52mVnm3HwjpqkdajbBvis69fXVIOfisRaU5Z6DFXiNuouNF8
	HyM1FTx6oAAXL4P9jGztjL/oaMbdNdjXQtYfL4tRJcTWJ6QrSXlM28OiKzfgokMLMxRgFSXlokiED
	omkx3Pabwz/BmB3qRJM1vdIHZbodeIDkxMY0lWflY2tJxU6MrNldXSlxRwL8UT0MATgiEPopQXc1q
	4eq+T9dOG42ZR1BUWIR2zfFenSuW9EszUjTcsITRfX/q8RYeqrUeH4SBsYZeiNNI/BdYfrHGfoDSZ
	HjrUHZGP9ra6nbDF3s5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9Tz-00000003R8W-0pe6;
	Wed, 25 Feb 2026 07:38:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9Tx-00000003R8N-3O4P
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Feb 2026 07:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=RBbXuWLXblfk6OwSd9oD/neH6OS15UC/fy5GctQv3UE=; b=fVlGNDVIng0e6cItPBczmv513N
	uO8U+MkQf5ktyVyrVLS7QOkPiiJEICLnytNU3B2iwUFQ/U15+DThw8KufqZL45GTnUrfY1XnNyf02
	nN2M8mhuqPxdCwecZfceHW0xc6i+ADRhVQ/2QjUydQo4NvMWhKzBdTpHJ/21haXCOsbpfwi+fe8e/
	mT083Ai06GoKeWiF5StpzKAJqTpketuPSpuaukNwdBQnAqe8skmAjeFOqj8tSG6xuHQ+z6qc2Fjz6
	5aOWD73PIn0FpT/4ZMe52v5gTMub7zkGqoAdzRohuUa6se7+4D3AVC6wqb191DC7Z7Z+I1U4DbsmO
	r5O/x7LA==;
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9Tg-00000008Ubd-2MX3
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 07:38:48 +0000
Received: by mail-ej1-x641.google.com with SMTP id a640c23a62f3a-b8860d6251bso841627366b.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 23:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772005112; x=1772609912; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBbXuWLXblfk6OwSd9oD/neH6OS15UC/fy5GctQv3UE=;
        b=wBAESzE4ldzKdBKYRkYR6r6zbtpHJ9IoLWWQnSqi7JSjMOabaUdZSlX46KDXT+DAFj
         pmnCtI0nKZYdK6mGNkvpp7z6D6eF/bDlbgrO7EQGxfCdkQPjjHG0OtKpFhwxdzQT5jQv
         FIcC2/wzkCsuMu4JIF0L/AbRaSz/xtFuYLZqz/FjT9MNDSYXz7rwFkpR9GmOBBxowDmY
         8rcABhH5dNKrz+hjaf+EllviFjDbwaqMHoiKqdruuW1OROCyzPdfdWZi+uFFEc9r0Z2b
         BtLpzUEf6xsf9erPHoPasUJNKc2lNvanlvZ5JIikpmSb/wG+xT2Sq3SugUOG8hQbtMqe
         Rx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772005112; x=1772609912;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RBbXuWLXblfk6OwSd9oD/neH6OS15UC/fy5GctQv3UE=;
        b=mwGyinetQPfCvJMuYFPEfZqNy7TJa2GATfFekp9rWnJP6DlKbfFM8zRihr9p3zIlj2
         MMccGaFDtDpp3Fg+3rbP2IqRIwqp1udSIbZXdJ4cljyIx2ThE10gpSZNsBn8MHQ7W2U1
         NwWKHN9skSjlBlfKi6KCJ8rpLXp/oUl0u2YS+P5RANlqnNOWbav1wd5kfL0AQrKddo4N
         C918aqYpUq7rEXFW6ZB3kT2wCruXFYH6DeInyyJ13aN4pT8hl1DFcCRTl8X1ONPLgSUd
         zzpyZNIw1WyKMyjgMM9T9btMGPfh1DHLdzvuIWLVnVz5reEk0R3ZurIWVA9J7ypH3CTT
         SsfA==
X-Forwarded-Encrypted: i=1; AJvYcCVrE54VVJ0HyRolS+MsB7EqS5PY99Fdlmxth6VcYJWgYbPQXcqkg9l/TaSsNN1zvHMi2+9jwYHUcsE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxXqvbFE7wTjMYSYL+JSfkuNYQPBh9jKp+PzHh3n7UEU6aV8PZ
	sTyMKoWGrX3rQvdSZbuxtaAsF9SzvIkyw778Ts/mWVEHKUblzHZQ1swh7wDr84SdzOA=
X-Gm-Gg: ATEYQzwUelaaBedrcmb6n+v2+vuM/QITTUWfHyGl/aIIys9ZaCdTDqoFDW0774xm8sH
	fqzQCnTTm+yv3GaQ1U6pTIeHknKZK8xxh6LACFoBkwcBMOYpfKyEO3lKJGxzomvyxXK49IZfBfX
	hDkJlPV/4p/l/WzQ5F2yiI0VPpI57PgZZubYI8rUI304DyU/4Z1njIxmKNJwUXMtuUbWHJvIt7J
	oniXMCfLMzvKTRjSuIUUYo+8lrd9kbo4V5oaIy+W8hZsA3ryi9LD/3OODTIEWziEVG+wVV9SOpe
	P32neF83pvRLS0bTIBSsYG5BhyNntMA/kqaSPrwErAjrZvsHcz86WVW8IqojPICEL1f+d3/QiNZ
	qN7NWsAMLLjhvAF1LZMbCmoFqcbEvNvQKmBeNLRrzHvkueLZmsV5P6aszVORTwDWP7SeQ2nrDvw
	1qsaWCGSH63g8IjgVDUmzMjFZ6SxFJuvnfN6DjN4kR593WK1e8KHb2RDh35y2lUfNs+1zY
X-Received: by 2002:a17:906:eec7:b0:b87:c92:25bf with SMTP id a640c23a62f3a-b9081b23d71mr868904066b.33.1772005111791;
        Tue, 24 Feb 2026 23:38:31 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084cd4adbsm494528566b.29.2026.02.24.23.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 23:38:31 -0800 (PST)
Mime-Version: 1.0
Date: Wed, 25 Feb 2026 08:38:30 +0100
Message-Id: <DGNVDXQTH812.3MCVKWNCKR8B6@fairphone.com>
Cc: "Herbert Xu" <herbert@gondor.apana.org.au>, "David S. Miller"
 <davem@davemloft.net>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Avri Altman" <avri.altman@wdc.com>, "Bart Van
 Assche" <bvanassche@acm.org>, "Vinod Koul" <vkoul@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/6] scsi: ufs: qcom,sc7180-ufshc: dt-bindings:
 Document the Milos UFS Controller
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-2-d3ce4f61f030@fairphone.com>
 <DGDW69W84LJ1.2GHM2WU31VANR@fairphone.com>
 <yq14in67xwd.fsf@ca-mkp.ca.oracle.com>
In-Reply-To: <yq14in67xwd.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_073845_267490_157C9848 
X-CRM114-Status: UNSURE (   9.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue Feb 24, 2026 at 8:19 PM CET, Martin K. Petersen wrote:
>
> Luca,
>
>> I've added you to this email now since you seem to pick up most patches
>> for these files. Could you take this one please to unblock Milos UFS
>> dts?
>
> Applied #2, #5, and #6 to 7.1/scsi-staging, thanks!

Hi Martin,

Thanks for picking up the bindings!

I'm surprised you picked up the dts as well (and modified the subject
line), these patches should go via Bjorn's qcom tree.

* scsi: qcom: milos: arm64: dts: Add UFS nodes
* scsi: qcom: milos-fairphone-fp6: arm64: dts: Enable UFS

I also see these in your staging branch as well:

* scsi: qcom: hamoa: arm64: dts: Add UFS nodes for x1e80100 SoC
* scsi: qcom: hamoa-iot-evk: arm64: dts: Enable UFS

Regards
Luca

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
