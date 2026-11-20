Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2AA606A326
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 09:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W/lvEo2W;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=qvDpXsoi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=W8xtdyUB8Jwws7o7hKpagAaymL0NYem135FON+3Whss=; b=W/lvEo2Wh5EjY9ZDbfTFOVSwoQ
	1C8acBl/pfc2Td08gBAEAsDkETGnT+Ma1dCoO1ZgDDhh47PcGD45XyBup6U2xw6B02aqXbK33K/JD
	AP/9H6RCSYk/eRC8+o93WoMtnKi6PcuGhwu7WSzBvzQUhpfGFWZULu4id76LjrvpaS+8jn0KlLRgx
	scvH/ie0BeClKMaC3eriRr0qWkbtTNLi/V2kVPDntUvxFCyo7pDb2rRqdreTwqULFG2Y61lehtxjm
	9iN2thvfIvLdT7dClmsoNpc4wjg+d0PaiXw+rfKA5lVghYCa3pTPQLLcOt06G6U1OYv5Z2rsaH+Rl
	CD9zziEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUL5Z-0000000EU8v-2HOJ;
	Fri, 20 Nov 2026 09:39:25 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUL5W-0000000EU8P-1VyE
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 09:39:24 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-4ad4072943dso297280fac.3
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 01:39:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795167561; cv=none;
        d=google.com; s=arc-20260327;
        b=mu7V62gwfOB/Zstxc4aDn98tNUqJEnOigXKbHJSPokYHtnQYbDxIEoMFVLwYxEk/1L
         qJYjIH/1ILXLoI6TnosutO2bAb0z1jfKO1A/9cQS87fl6uez4H4+FJHkSCBZkyyBOwR+
         7aHvVBg1DJeAiQj9mpGkre5PjdCrj6RsfDz39Cc9qTDaC3QPMN6B4dHyQLMtCrjEt+dO
         w2Qnixy00n+pt2oHWTjcK5ZYtaQvEt0fe5gQH10wWjnlyxZcRMD40GSgA3/8IZ+V82u5
         ABMjF6VjHryw26hZKYLne//3TjdqXEUl5AU/xHERzp0/IDcG6zg9IBYLnNVpYCRUy4TJ
         e4pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=BEAw+eFZcvRl43IB9+AAVp/qhU/BGg04lzJ5p+eG8r0=;
        fh=B2oMUr7MSH3dsqQHvufkg5ZsDveUiS4AAAOynpRti6k=;
        b=L5tpvqgZy+ZUQyQXiux7FZYts9UUN8UArc9YhpZDWYZzwJSaqZhMAjWmeG//xklann
         1G3Oja5THXglI3Oc+NTfok7gYJIWwexMFv8cgTYUEuWsDlIYhxqkKac4ebpNh5c63fmT
         tBqss7XIRkbwEVEGVqMjIu69y5VswTAh9umpJFskDfUU/5vaCl8PWdaspfDBYXOSODLr
         wpVD08UivxC60b+5WI3+TtlfBZDgfFfL5Xoh0Xpa+2SwaZ5LTswoDu4m4N1D0KjThz/M
         R+xSwqw+lh+ddFOvXHBnV97iOahUx7l8WFZSUUHK2aHnMAlOWJntEob/fOIUU2tlRx6q
         MUdw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795167561; x=1795772361; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BEAw+eFZcvRl43IB9+AAVp/qhU/BGg04lzJ5p+eG8r0=;
        b=qvDpXsoiCwaUv3JIamAfa6pFN0zxsLU86DSRD0sBK19yB+Es6mgvesraxSRYihk1nQ
         dgvy1ZYNcYp89qu+pKCUuXnUR02QC+jrl2FTxNcWgWEr4cCaqMwCALNTHF2cHg0wQntp
         JnS51Z06C/2slQepoONF0iyRwjXzD6C/3+nOP4/DUtV7PXME742qEEMuqoOceK2dhNH+
         f5ml13Y52iTZpVkZVZ9F1CcIkaGWjX7UBp/Ouxcz0VeJfBHDePqsNFD5xB92ZERKb3+W
         HkOqnz7kM65eAahX12EMAI4STDQvvWXwhu6GLJjg5IVMFkZ7bJhlOk4rwRoR6LwRJCDZ
         2zbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795167561; x=1795772361;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=BEAw+eFZcvRl43IB9+AAVp/qhU/BGg04lzJ5p+eG8r0=;
        b=fwALg0LcSoH1dk+o6NHcbMThgUmTgrUEHXzsn5CxbszXQ9aLTLcWEOtnqq0oAqbzzR
         qQLWuCZv1VFAYDefxg+PjjxDp+dY2VM4slz7BpyDA6mbkW8CX66f038uxBg47YEKaoQQ
         6VeP+kENLlr+5zlZyPZyQ8yRSkAd5UX/ExmDvQvhkI30Ff1XI0ZGb56iByFPGkvT+hLJ
         clB0aDBjnpJrisH8otU8mp9ZBg/0bSP5nX479O5glMMkcmXCowLome29RPaToRFwbfr5
         VuZvQ3/PKlXozawcc+STzd3/1Hhkw+j2uMUh1hG693xR9/evjDrveBQVq9oszBIeJyC+
         gD8w==
X-Gm-Message-State: APuU4Z8YOwJq2vLSAsFJzXmQIwJhuZUwoLnxzswOQ/BwuVRIClXdKU2p
	QL+7LaTHLlCDoFDiFFL3cHwP2wq0LC/z5ZH3OyR+Na7mT47Z41XtErAdFbzulFqr1a4zSb54bV5
	87RC3hNJU0Y15x4fNBUbXgovYx+qBOJo=
X-Gm-Gg: AYBFou3gi7DZiL5I8TpKMAlx1gxKhD9ceIEqumIFKciSxBhXB47OVndlawfaBD44kNi
	svo2MMwTIu5oOuUMAGHiXuLoCSRFUEaXnTNNcAQ8A4w2N7H/eKaXRV7QCd/rbVdgBNlKUcGebHx
	pn/1pi+slIjogyLuCwkD2q9pd2oOwvNB4U0iXUVs7nd3TP3lpO+UR+lCPrmb4c3kYWnH5LPlRII
	wYdFEeqAYluy4+NxpmX2Etvr8KcWk3XI39Ngd4drVy5qKUvEwNhtsVi/+fmhpeWyJJWEfYY+Y6k
	UslMEBdFROSo0ka4XNo40RWHy19y91Cep/cRj5kyn7TBhNKyNtSH3Bb2DgjD+BAccS5BUuc/TSn
	0xi38nK5uSWIpWCoMPbnAUQl0MnLfVBNqrsywfjna5KhIk5vBmVI9EcEiJ8l6wRkYkN/cBtCR4J
	/PHDVf54uCMkBn+5k=
X-Received: by 2002:a05:6808:1908:b0:571:b166:3d76 with SMTP id
 5614622812f47-57a0ab2460amr3343180b6e.29.1795167561090; Fri, 20 Nov 2026
 01:39:21 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
From: YoungJoon Lee <getfeus@gmail.com>
Date: Fri, 20 Nov 2026 18:39:07 +0900
X-Gm-Features: AclHuK9ltT3zUqHytloj1JW7CdVlxNOQfyl-kfE2Ms_hNbPGLsz0aADkKXJ9yAg
Message-ID: <CA+m4KrAQZeEUL68dwJnVpO_ftJSS1ed86_XgnbW1g=EN=xKRcA@mail.gmail.com>
Subject: [RFC] phy: qcom: qmp-combo: Gaokun3 USB0 xHCI stops responding after
 USB3_ONLY transition
To: Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_013922_404243_C8F36F45 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On a Huawei MateBook E Go (Gaokun3, SC8280XP), I reproduced a USB0
xHCI controller hang after USB 2.0 storage had registered and the
QMP PHY switched from USB3DP to USB3_ONLY. Changing only the HS PHY
PLL supply reference changed the outcome in a time-matched test.

Both runs used the same local 7.3.4-gaokun3-touchtest1-pllmux1 image,
initramfs and command line. The stack is based on Linux 7.3.4 and
the Gaokun project's 7463df37160b device sources. The port was
a600000.usb, with QMP 88eb000.phy and HS PHY 88e5000.phy. Both DTBs
used L9D for QMP vdda-phy and L4D for QMP vdda-pll, and declared
mode-switch on the test QMP. The sole B/C change was vdda-pll-supply
on the HS PHY, from L6D to L9D.

I booted with AC connected and the test device unplugged. I attached
the same Patriot storage device (13fe:5200), Type-C adapter and USB
2.0 extension in the same orientation, without a DP display. First
480 Mbps enumeration was at 600.413 s in B and 602.532 s in C.
Both runs logged the same QMP mode transition.

B (HS PLL on L6D):
  601.750124  SCSI disk registered
  602.372963  QMP switched from USB3DP to USB3_ONLY
  640.995390  xHCI host not responding to stop endpoint command
  640.996749  HC died; cleaning up

The controller reported HC died 39.247 s after disk registration.
The USB device was still absent at the 114.85 s check.

C (HS PLL on L9D): no Stop Endpoint timeout or HC died in this run.
The first connection dropped 88.300 s after disk registration with
the cable still in place. The port started re-enumerating 0.336 s
later. After the disk returned, it stayed attached at 480 Mbps for
90.092 s and completed a 32 KiB direct read. An earlier L6D run with
attachment around 68 s after boot also passed the 90 s/read test.

The L9D use count before attachment was 1 in B and 2 in C. With L9D
shared, the HS PLL and QMP PHY each held one reference. In a separate
instrumented build with L6D assigned to the HS PLL, I captured RPMh
disable/enable requests to L9D (0x41104) during the transition before
the next bulk OUT stopped completing. The matched B/C runs did not
trace RPMh at the transition or measure rail voltage.

The mainline Gaokun DTS already shares L9D and leaves mode-switch
unset on this QMP node. Stock mainline reproduction is untested.
The one-line alignment for the downstream DTS is here:
https://github.com/right-0903/linux-gaokun/pull/9

For the next trace I would like to correlate the L9D RPMh requests
with the last xHCI completion. Is there a QMP or DWC3 status register
you would sample across USB3DP -> USB3_ONLY to distinguish a supply
interruption from a PIPE clock or PCS reset?

Thanks

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
