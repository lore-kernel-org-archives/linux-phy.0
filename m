Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD66EC43603
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F86E6145E
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 07:09:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F86E6145E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i9cQWWRPAohuM6rhrwWsrwvc+p3CsEG7VB56zDSIaVo=; b=gySAF1kS7Ou5CPBnMI3Bdlhi3D
	WRl7u5WqmY9eQY2SnqpajR9octec4UYE6MYG9mHqUqQH8qJTQ5Vw9f5r/KJiQnRJG/wjA31TQG1Qe
	lckVb/sSG/90jOB+nixqEVVTuuVBytOKaPUAW81SE6pcGqZkY66CNYsG1Wzttj1GLy+U4aqmwGuWg
	pg0ims6PULVHIy58x3XKcNjk0Xx5hbVsTzPJu1NmJW9pupCMpN8uKXVlK0wLj+cRycdpsDY+u3g+g
	tDA0Q/0odG4Ab26Uut1451+FtYBl3/I4HR68oYxPMiiAqLpu4lfxV3uZB9JqlszIWLteuJ1nsFUGN
	1YgLXxRg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfH5s-00926K-Bd; Sat, 08 May 2021 07:09:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5n-00925V-04
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 07:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=rwlueIf+IiWxCtwv+6qLaPVr/+smx6r8bhHJRc9exnY=; b=D9ULQ7sX+W0bu9VVLc/bsmxnQk
 AM2CC9XaH2r/8apxopg/8NuxV7zemwRzRhxbnbQZXXMIDOj/dk87YTHsQ7Wb9XVO37p802NIMTO6C
 34KHwvcVq4q/eTFy64YiNATeniqJH5Uku8eSJn30lk28GynRQUVRenVNmtv7FK3dm2YnA/9pRCKkH
 /37RfR7jWvlboXmilGLGM/JpNZHYvoWhEXhfZ9IUTtKCQ2AeEIywxu72yhWxNVzA3LAWJ+3S741FH
 017BsQF++inO8XayD979a2ELCDYaQc72p27ZgrGZu+NJrs3qhNS0pJgcfuKfP8SF8bFHL8YbAYxKc
 FOXpdxjg==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfH5k-007PmI-6M
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 07:09:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 4-20020a05600c26c4b0290146e1feccd8so6022851wmv.1
 for <linux-phy@lists.infradead.org>; Sat, 08 May 2021 00:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rwlueIf+IiWxCtwv+6qLaPVr/+smx6r8bhHJRc9exnY=;
 b=ENb6xEsPmyfZduBiQewKtFgHGyP5rtaZO2Gygmi6Kj4oyNT6gS8j3zr72KsBZlD2DS
 6Wj/0VfJkPD+drLf0f6myXgv8qK0lHTavPgubMjbhnt40cu/9FMQXW8cQTYYxZjYqzbK
 PU/4/E6x1FSFZQYrlQt43sOWy3KLDYzE+4J3EGbzXDClbvA7bue/0cFfjuZGFD4dh3uO
 pob56iQDVCtKuydCjYKNvUCOk0pCZ1hBjH/+vElaZARB6oD8kK55pezL9MpdUdHyiqjh
 6D1lunXzAGEdawIsY/cVNc6dPSSLrn+NFqVj3fliTGDatQr3NWNVanXSoNLkddnYFyJd
 xOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rwlueIf+IiWxCtwv+6qLaPVr/+smx6r8bhHJRc9exnY=;
 b=RSbA8KfhsFeWwO+nJ0yVD+LFhFYczlE9v+W57WldpJ+v3oNcLCCTLMB0jKZq2LW9Ey
 1j/ZykUcfQkTgv3h0xanwLpTycmjmyjmA1WCC3zjWUDMF/YdBcitit55P71LKrNAVaa8
 2Fdh6X9uNTV48ggMuM2SSli2v5cmnYTYRRQx5uEraZviUEd31yjoJJMjbx+bnzRQ8aBD
 4GfNPfrK/MYU7dP0lIwdmFPMnyaNDaO1Gk1iBe09OgyYr0e4Rx98qO2AHpft0aNGBXfd
 7pS7fU/VnpzWnyFx1u8vLeKvEgmeP/OayfwOwmUG7ggWPBqj/r13RqC2T2d+v/6C7lsX
 LB3g==
X-Gm-Message-State: AOAM5304UdkTn2LVCP/Fg6+/HT5V3V+HnMEMtgdhJU5rzc1VptQ/WlEP
 gKAJ2XNgVZQvCTxBNA4nxSg=
X-Google-Smtp-Source: ABdhPJw3+CpKub1oGw45gE5B6si8v9+9YFBdVKGtSfiv17DJ3EObZYQDlQHyt8/XZRyMa0OF98DjVg==
X-Received: by 2002:a1c:9d43:: with SMTP id g64mr14242588wme.140.1620457772842; 
 Sat, 08 May 2021 00:09:32 -0700 (PDT)
Received: from localhost.localdomain
 (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
 by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 00:09:32 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Cc: kishon@ti.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-staging@lists.linux.dev,
 gregkh@linuxfoundation.org, neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some improvements
Date: Sat,  8 May 2021 09:09:24 +0200
Message-Id: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_000936_266537_4FD8A528 
X-CRM114-Status: GOOD (  17.03  )
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

Hi all,

This series contains some improvements in the pci phy driver
for MT7621 SoCs.

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'

Because of this we can update schema documentation and device tree
to add related clock entries and avoid custom architecture code
in favour of using the clock kernel framework to retrieve clock
frequency needed to properly configure the PCIe related Phys.

After this changes there is no problem to properly enable this
driver for COMPILE_TEST.

Configuration has also modified from 'tristate' to 'bool' depending
on PCI_MT7621 which seems to have more sense.

Thanks in advance for your time.

Changes in v2 resed:
    - Forgot to send the series to devicetree list. Sorry for inconvenience.

Changes in v2:
    - Drop 'clock-names' property from device tree and binding
      doc sice only one clock is needed.
    - Update driver code to don't get clock name as identifier 
      for the clock but just use NULL.
    - Add patch to fix a COMPILE_TEST reported issue because
      of the way printing of a pointer was being done. This
      patch was already send by its own[0] but to have all of this
      applied together I prefer to include it here.

Best regards,
    Sergio Paracuellos

[0]: http://lists.infradead.org/pipermail/linux-phy/2021-May/000395.html

Sergio Paracuellos (6):
  staging: mt7621-dts: use clock in pci phy nodes
  dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
  phy: ralink: phy-mt7621-pci: use kernel clock APIS
  phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
  phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
  phy: ralink: phy-mt7621-pci: properly print pointer address

 .../bindings/phy/mediatek,mt7621-pci-phy.yaml |  5 +++
 drivers/phy/ralink/Kconfig                    |  4 +-
 drivers/phy/ralink/phy-mt7621-pci.c           | 37 +++++++++++--------
 drivers/staging/mt7621-dts/mt7621.dtsi        |  2 +
 4 files changed, 31 insertions(+), 17 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
