Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E6FCA1002
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 08:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Hiw8u2rDOd18s0Q6q9k20jxhYvkzViTrr9dFuecCt0=; b=PzoPA+E6g3xMFY
	NXJnn1sS62+qzFY27Ts5wwI/Bv2UJARFKaNqrqLm1Ym7n9TOUMNArleVUgIVBClucgmeAhi2r0ZE5
	46uG3JpabIciXU3t1isqyK8EizJpYeC/rc0cJo2xBkMYdCf2TMJBXfuWgjM/A5mji8Be0LWx0QxLd
	aZyypw7SCwn24AIk55+J0DNJu+jbyDcn3hmqaGO6WWWL65z9RumfTkQTMrb+d+517k53/rrKw4F1n
	yKEyM2KLN5h9D1ScsX8dQuVG5Q6Aa+4Po2w2iwQj0rb4WuHMVTzXp4ahNxh1qxvCpcu/H45DOh+T4
	zWhunKMiO+btvOvOXlkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuoZf-00000007Dog-0rQ4;
	Sat, 06 Sep 2025 08:47:07 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuoYF-00000007Dmu-1kBT
	for linux-phy@lists.infradead.org;
	Sat, 06 Sep 2025 08:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oldschoolsolutions.biz; s=s1-ionos; t=1757148337; x=1757753137;
	i=jens.glathe@oldschoolsolutions.biz;
	bh=Qk0Ugz0RYhBkqBiOH6TLDHgmGaQbSmhEOLE0qSMFHWU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=auC24V81wx/DeDC7VMo7Trx6pqXlZaP9FvBKK3l8S6ZtrU7SrFu0CSpAMoTXRgmX
	 /rG2Zjd79Uq21hZSixc3L0oByh+9AuQaBWJdotOsrYW3gSfflE/9apA/f1/eeWAym
	 Hof7JQtr0va0QQbTjO85KwaWfeDvBqIEJ264Pbh1Lnq3AzlBnMc+NC+lnmnihEv1n
	 2o6O2QJHp/zQe6GbwxMrUigBgKZLE2d6AviVY9U0mua0DNVGwCETIMIFarqwAStdx
	 daQE2TUL7xZeQUD0RC/ER0l/0RULOqOo3MJaGX6fSk2vCnCKnNgs+PBBk0S0DzQlJ
	 8Nh9phbSb1hLTwaU+A==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.0.174] ([91.64.235.193]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MD9nd-1ulhrc1W2j-000Zxp; Sat, 06 Sep 2025 10:45:37 +0200
Message-ID: <fe92c4e7-6a1d-4cec-a3d1-c50adff9f7f5@oldschoolsolutions.biz>
Date: Sat, 6 Sep 2025 10:45:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH RFC 0/3] phy: qcom: qmp-combo: set default qmpphy_mode
 from DT for Thinkpad HDMI support
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
Content-Language: en-US
From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
X-Provags-ID: V03:K1:j0IpGjLN4L2a45GZ4Oi2D2xcseqh1/fdJ7qcBOxJv2vVMhM8MPI
 EpBO8SBj3tyAMK+Is+Pmtt8Wi5b4FUilaiJsANMJVvZuB57mS3JWHGFFRv5e70Uya3g37MS
 OA5C1q440a5BfTq60NUoE8HZ6yyV1nEYoU6REgra5z0kMyjyH6xm6+3uYuHX2kSpRhYEJjS
 S3Do19QuJsF+bEpCo05JA==
UI-OutboundReport: notjunk:1;M01:P0:J3Mxi+OdKAw=;bULDV+kVaYYlFupnL9hhzhYlnhD
 FZ5Gh7uc9L+wUs8be4wLVvpyqtfcrrVFHTo+mRaTNDmwP1eTpbbxY9M4CTkGK0iiaP+8nRy+i
 For0NChJA+1MDi5ZTPphIscRIMc5SzL8ElAZWmgXgPA9JyrQ0ndBZENEL10qpDsZcfKEzvzSg
 dj6Edj81WkMsv9EZJOBcU3GJNO8KgRdeLlgEvGWPi5roTk9kqDG+IMMdGOihRDdAluJJpRzHI
 NbKXZ33SY6vHVFiSTGz6OJcz6gs8r1HuMbmzDz39ewR03jvgnv784qfh+2tHN2BmOPbZ/PvEr
 VignHhRMBWLBGaY6SvwNgpW41A9z13te+2sPfx46bLx6zeN8W/fYNkD0MDmwth2nEJObeTDoC
 6sKc/kEcqQHzDIvMxBEuk9JCpKc1KmqsJ50AIhrczTvufnqzNnF240gkyqgPuKkPKQ08yEkvq
 yHOFTOyS7gRZoi7eZdE/+8neB8liFWBDVEQ0cei6PsasCRsUcslkd5BcRgttL/k+h55WcnDKQ
 H2hZYdnVFeLiJvIBar72m9BMetqSR8t+VFLjQ72gXuSaKeLLTVEoW/mBcfRZ5SjzMRplpblbk
 rt++K5ZpQ/L+JRwsXL+1tlthFTt0avcNpWnjwLW7XhHtFsICfY6XRq3g1K3IeW11pLZUCRsHE
 EbDT6VAggYGjXsV1TfAnXPBuFLEQN7JWgL1PMhpuqVzv9WgecYCsj50uOJx/Zm9ScLDi3VBxJ
 x5rg9sL0bkB1NohrFsI083f3gakzCdFB+5Gq8cfM7azIgc1S4YP8K6YzJHWS6RZMeX35VFagr
 beESYFtoeHPgmXdAp6K6MkTTrXWNWAg+Yl4cb4zHRGdUp78H8YJ2TsK7wV7kUB3HfybqeKJxD
 M8aQohWw6LEk0dplkHZCpObYv/toJYb2tOa5cHvCbkyqknPAyheAuuVbSmquFUnTldfVWTJ5V
 6HcUKmpU+Gl+11LfCuLBHq6Xop0XutAnDGUTwxLyhvBDv0oOuOWqt8k501+W2SVeST4I6t778
 xVogIUoYkF2N2lYYBLIOOoeBrL0l47RaytdvOE3V+2DQW8IRmZovbgOqMNzZKfa50hDaigccs
 ZfzgJcTDIwAiKN0fr7wwm/NJBquhWXkrMbUR56Y26lth2xfAOXT8tSSDj1chIQVyDgqW5OFw1
 IqWY7d2ql1MRpKxtV0b7nAEvdiGy2DN4SD0E4osV+fB++pRZP5BiL6y3I/xjnNne5pQthb2qt
 nn5+eDPWw/93sARqWqCRbxtzQAkwVuZ8cLhIGBB27Mlme7kD1AONaBcUA9AjqD9Qs5/L1LrQO
 Zc9RJ+OaP6FoCY5C5z5nHMLBkHbjj6QD2pumxN4g8YSuNQotLzbxdmlJoHvbpupv1nwVfXmfh
 SOQmv7FHOiRw9PDRAKk+OLBgWmXn86uKXt8lE4JwFA9eQBYQeFCMew+PbpMvenDy/lJmHmy9K
 t2xChKLdhGYKhfHIP8X4C+heHBB41YJ9gm/DdfU8UAzILFCSdwaj0BTGoDPF2EOitjkoQ6DY9
 oRLsCXr1IBCyXgmTH7j8cBvpO9bFRsyYwBk5JKdheHKZO6kBSIIWEWp6totqJ3OygL6Ge4Ubv
 u8mZwspNp9Xhty7EiJfW1mKZK31CjTJD2mxmZsxHKCgW32eR9HwR0pQ0BvjA1ZwoPR93RjQos
 oeKLSsN3HHX7xVy1P3phSD8lAaQz7EYn8iuz+aqiHEddO9xdMIRYOXp8Z2o2U09cOdqlJzpNl
 k2WBVlv6GXfU8d+CZ6TfGsq75U6MGfONC9noZV7mPs2lHPKy+d0qil0Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_014539_751211_A407790D 
X-CRM114-Status: UNSURE (   4.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21.08.25 15:53, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.

Hi Neil,

thank you for the patch. Integrated it on my tree and tested on the 
T14s, working very well. Also tested hotplug and suspend/resume.

Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>

with best regards

Jens


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
