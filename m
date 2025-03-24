Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF76CC36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 14:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThLXwJTNoAQ/R0rVAP9oNvNgkxqmHLDclH2PQs5ht+g=; b=mYPQnI8I+cJpoQ
	PKxtfmDAlhqSjQFaG9ZD28yNXd7o0zSygX7/ae3UgUGrRUEIOfoIACFpAU16xOHx/HAIQaHT5+f3n
	f1rtVOT/sLot25SecF4pCT0sHJQ7d6P0s0QowQWBvTGaHHSO1FuKOGyf2ofuuqrsIJ9LQJmR/6PB3
	am2WOT21pPRd9MA6l9DN1m9RVYU/DGyPeNpdLC24Hd165iN8p3UD1JIF3rzMZqypFmn1q/zc1BnJH
	rSsIGsdA9vyY/GfibZ/HT3nYTNzLzpDUONYLoW5BNJrDy/JIkzdbc+3BTQRuhvLfseKQ2uFHsDKox
	7juyqUcjlTYaRWha3IVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twiau-00000003MaI-1S3U;
	Mon, 24 Mar 2025 14:16:00 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twiar-00000003MZr-3Nlf
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 14:15:59 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-6e8f4c50a8fso37519846d6.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 07:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742825756; x=1743430556; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/YTUkjHZHGEAKDUjwWiEYmGKnaxSbNIbQRJt9OczQAk=;
        b=yqprPp1O98S6u8D9U12z8RdAnuFCaoVjyH4HSQaJ6TPk7znfiVNooNCWaAF0c6CJtT
         586K/RBC0QnZJEhdNlSEgmEDp5MrzXwAp0JYynKXcliRM9+uS/1jZpHYJWSPPw+RP0Jr
         7WqXT3ZkfabeFT3W02oMp60rpvIIJyvOK/3xZtVyeYmJjqs0WysxGFQtbBWYwp1TYXkP
         cvkq3Ul+3sb/aTC/mPw+K9u95J8fKPVqlDoK83UOYSvLCnhodYuk5+EWn7Sh1zmTylwD
         lSHQRai1MgmDb1e8aeq7w7bCUOEiQkUFFhpHPltr3iytpY1KKN2JFNioxQq2ZcXRDWID
         wa1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742825756; x=1743430556;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/YTUkjHZHGEAKDUjwWiEYmGKnaxSbNIbQRJt9OczQAk=;
        b=NvdOyzT2jtNMS8737WGh7+Tar7EE/M5GY5JUeXcjq1OE7OdC1Ps4ez4fFAhOO8AAhC
         z3EcxpykNFafEYD5PVdMMRuFzEcbxvc4HDGY6uBn9gLqKWRF8B7bosPbWGClpG7C8IHI
         tFuLGCCaDUl6hN0VDvJCejKMdpuvXgY1WD/l176q1TkQxoWdblVrekB9IDxdUKSPp4NM
         PPfIU42cFuRJldAzH3SdXjkok1PJmIe2cpi1k/wgw4b5m1hizKj3nQbplxfGW4hYaDUd
         pZHfMNvFjwXbRFu11orYOOPZRSMDvvstqSFJsf+4LQPJj+2AmDPssmNRzAIswuLDTtXk
         DEjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCZTw1ibOJHvEHWnKwYcF6eNna5lNC+6AHv1z0SbItpGAfY8Dq/J9SHpS43LtqkXb8TDnlnjmCAZE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpusqztNUIv/H2nrSMdHPXUl8pcVPWhlLVx0fH9ZD6Vr/ZJn9e
	HOzEzQpf5fMW6ffZRPFj4g8YeVkxEp+0kXtw+KQyUc/sLvuTZncn4Ds+2iL7JnP9eP5ILeYUfjF
	wrp4Hkt2lvZmLPkqPDi6h1RM4tRbFaKafNvYayw==
X-Gm-Gg: ASbGncveEUqXFxTrYI3GjXQJcI1bot/iSkV7i6iJw6Sv/J2nh4sRkQwJjcr40L3I27d
	eV+5xZlTdNzqliHrD4eRns5hsi/Vo+tt92Ojl6ei93RSVn9LIhaNBsbppIVRbpW+FiTsUZajPlJ
	y52bUAWL6wicGSnGV2m7CudW4M9frPyYdVun2I
X-Google-Smtp-Source: AGHT+IET01HrGYkfdsNQwuLGnPKedTxLw+MZzq0YOj9OYp+aXXjQ99ek0X4dg6AMPBw2zvLeAvxl7AVAjVE/wKcQkdg=
X-Received: by 2002:a05:6214:21e8:b0:6e6:6ba9:9e84 with SMTP id
 6a1803df08f44-6eb3f2e89e9mr158682316d6.26.1742825755791; Mon, 24 Mar 2025
 07:15:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com> <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
In-Reply-To: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Mon, 24 Mar 2025 15:15:45 +0100
X-Gm-Features: AQ5f1JpC0RoI-SQpmS4z7rQW8vsesIlMQfF1ceo6NxFQog8bjicko6I-EYu81x0
Message-ID: <CAEvtbuuyz_5xm1=juJFW5nOo+xL71TeuY-SV=YbTnAOsHW5yeg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
To: bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_071557_849289_66AEB87A 
X-CRM114-Status: UNSURE (   8.04  )
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

Hello Bjorn,

On Wed, 19 Mar 2025 at 04:23, Bjorn Andersson via B4 Relay
<devnull+bjorn.andersson.oss.qualcomm.com@kernel.org> wrote:
>
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
>
> The fingerprint sensor, hidden in the power button, is connected to one
> of the USB multiport ports; while the other port is unused.
>
> Describe the USB controller, the four phys and the repeater involved to
> make the fingerprint sensor operational.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>

Goodix Fingerprint USB Device fingerprint device shows up on my XPS 9345 now.

Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org>

regards
Stefan Schmidt

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
