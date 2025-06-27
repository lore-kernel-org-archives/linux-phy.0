Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A01C7EE2A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 07:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xmpLZQdOQLHXw6DBUkN5W/I6XsGxCu9Jza1p+xVgGc=; b=iC+noYSo0d6yD/
	oFArMXdiVDQbD6xUDKclSZ9UKlsav6XoB6RBlZ/MpwOdrqDlY1jUZNdFFfDKlT792SVp+ZSEkUllS
	Rbv7UXGUHlMFCXcclCUZYbQV8A3lY10LRoXB+ReMHcvmKNn9RaDF2ICeDLBcc1MZw+t0BIqvA0xEg
	xRn4JLeqk3Egqs1+tp6VYP2rYpQGujt5sdFJ52D6RL4Ac08F6NqQpYYiy3laJbdxSO7J59vOu8Yki
	BCGd/g7c+TKOB6nxEdGtqwDbMO7FrKO5/ZqbJJ8H4aKJJnrtYqoRw8v6a/YwZu5z7MvMfL7okeQql
	LqALd2JyuhXQh6ntDAiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV3CY-0000000DnHV-3tAe;
	Fri, 27 Jun 2025 07:08:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV3Bv-0000000DnCX-2JxK
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 07:08:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 939D4A522CE;
	Fri, 27 Jun 2025 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8CEC4CEE3;
	Fri, 27 Jun 2025 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751008086;
	bh=qPIY1fmZkbzHrI9oc6GJqjDbb45CZC+fXwI9YDyLsLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rQG24HIgwtX2nEJAbCbGrkSmGsCg6MTegv2UU06UpctZ0nF8cdqxoC5fUh7Q23Fdj
	 fVxDDiMgeIrbDcyh2YPjXwMPqDEVZ9C8Da35MB2dq8B4ZcjKbX9eDn1b6vqV1tE0ng
	 QAh0rc/4Gj9l92MKqP+oeaMaVrxRBK9zg3JtkSTsWjT/EvAHWktswNi2M3cd9b8X+/
	 QR5ngwsUx3/2CvYv4Acv2YkuMwyuWgwKPqKgK4I/dUK9MQJZ8+/4rrekQ1f7DP6ReO
	 E0ko7WWE086WrB9noli8lAKjKEfAG3c9F/Vu0frE+WAoSddoBFepQPdHTDqpZ+6/6z
	 kO9CeZxF/ywEw==
Date: Fri, 27 Jun 2025 09:08:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, neil.armstrong@linaro.org, 
	abel.vesa@linaro.org, kw@linux.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <20250627-flashy-flounder-of-hurricane-d4c8d8@krzk-bin>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625090048.624399-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_000807_655654_5572B883 
X-CRM114-Status: UNSURE (   6.69  )
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

On Wed, Jun 25, 2025 at 05:00:46PM +0800, Ziyue Zhang wrote:
> Each PCIe controller on sa8775p includes 'link_down'reset on hardware,
> document it.

This is an ABI break, so you need to clearly express it and explain the
impact. Following previous Qualcomm feedback we cannot give review to
imperfect commits, because this would be precedent to accept such
imperfectness in the future.

Therefore follow all standard rules about ABI.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
