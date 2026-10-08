Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80681CA6016
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 22:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9h/75XBcctHw3g/cWOUYJL8C3QQbKYW2+rZTeqMLDpk=; b=MsLKp5sfu6w8a3
	WwFFhYI+iJJgY/Y0D/TajMlVQAA51RODY9uZUpT+aE/HsGDHhqZGCAOqltaQh3SNlvlWHdk+Jbo9l
	wSyhZ+GQ4Mx/2kpYYvLBx7aZ+0dVlGe/rqTHD4381cv0Wut81UXWes1wUMTnp5/mvWPa2Ofe9iEiC
	zuesptjB2asne+Gtt7BRHQCIlaK8JGlBMrltdrH82MPP25MrtSmPH5ez5JCUJ1ZeyLgcVqFV55RaW
	APbUWtDpOuidoExQJIEUguMFj2bghRp7Y5vjcJsq6dB995LF7JN1gMN3xWWkdZjuuF0VPD1pILISn
	/S7XG97tVy+o24TAM7Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwfG-0000000585F-3b76;
	Thu, 08 Oct 2026 22:32:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwfF-00000005850-3s4g
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 22:32:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BF24860DB1;
	Thu,  8 Oct 2026 22:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 404921F000FF;
	Thu,  8 Oct 2026 22:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791498755;
	bh=fm9WOXdln1JSVmOw4YJV7wQqlGzRZ+cLM0C7l5OeRkI=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=E9GPfPM8CWlfl6VGD6t5IBrURhLx+Wf0Thn45Dj7iMUdiVmoMIH3CPI0YnHiCu+3I
	 BY1JK2/8+vk+psiycmSSy+YnNia5IqOOqGxQ7flj5F2AJ6cWn9urYZ6wAKVdZlqmR4
	 GIZd4TYn43cKkEuQeS+YjhJEqT1IffKeuczzPQCr0hwfiiXeSEZoqC/llZcLQgtuSt
	 fuTzv5i7aYMHvgnZnIc05G7O2kz5bJYQ4LwhubXeM6pZl1wQaEPUNZ9A/tmEGiDFLa
	 6fARusk/z5toXZW4JbEOpRBsMH4YPRXFBmse9cMAnpt6aXGHToDqVB48vpsMNM5J7N
	 6OF94w0z+9VYg==
MIME-Version: 1.0
Subject: Re: [PATCH v19 03/12] phy: qcom-mipi-csi2: Add Kaanapali support
From: bod@kernel.org
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-3-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-3-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 23:32:28 +0100
Message-Id: <179149874864.2596899.12300116428348336432.b4-reply@b4>
X-Mailer: b4 0.17-dev-e5aa4
X-Developer-Signature: v=1; a=openpgp-sha256; l=317; i=bod@kernel.org;
 h=from:subject:message-id; bh=gynBiJ2XpmpWqYIos0a76LAWJcyd5WtUDWCj4iUsRm0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqyBn8lyHO/rFIh94QUlLiNw7eGFN+kZXZl3rLa
 xMnbfwU0SWJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCasgZ/AAKCRAicTuzoY3I
 OhrDEACWRhEok42o2PnBb5Rr1aaD1ez+Z1apVrTSKkg7Ucj+oiGsvee9lGeyK4QBX100IMXpvX/
 SFIze3cPzwYWKJ+p8oAgjTTii6nylGSLixQ+vC6pANB8hyeiVSs0zFkKGFZ8eKEFNi6UPyDvaJ+
 1MFnyirRb0D5sWpeOagJODxXbjMJEop2tZumjoKngvZ7t9/DsHPwL+2zkSXDAuTCUZwecTwEfmj
 41FGX2MXK6ZnIAnydaasCFsvKSB3U6awedcK9ORki19c3cPAenHnYdHyBUZLww5+L7Iwk7nbb1k
 qjiXtZP5oqQAVz3AGU8T1785oOmyhcZvWLshEOPC3TqH/hIYEVCV+M/13gNug+5O3NjWtED6CV7
 ljBu4FJ4rmjqERuDojQJXncm/TJ5np/VsxPuHzqoYC3T2vwCPTgEbNs6gp6EBfUaX0p/GK53cST
 uWsjS+qUgUPxNAlrsxTlUQUKivk0TPU+kGnubnbltqNHUJ/bGRyHSIFlrWFtrq9kfYI+iw7Ivm4
 WWdZzT5ydK735FMM8UVK0mzQd7mYFt9vSkQ0UvLyBA/V0F+q3jl6JSzAydXHJg4HccL8G7vXgPA
 oz7O2FYaIqynDNTJ0qjaQvrooxkVpulSr8WYMnPWEHfrOMtxof+zF/09WHClauoIS0RKn4qLYUL
 yaePaN4hlEtQpUQ==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
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

On 2026-10-08 00:14 -0700, Hangxiang Ma wrote:
> Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
> driver, including the Kaanapali common status offset and power domain.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
