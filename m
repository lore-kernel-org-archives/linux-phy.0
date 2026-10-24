Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D9F606A31D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Oct 2026 03:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VdN0eqOm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=b4CkU/pj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EKv+JvVzjSBHrXTdXPIdETgBi4wT43/9RDxbvhDCY0M=; b=VdN0eqOm6rl7KZbNS4Puw6Klwl
	5Rn5AJ5x1uqeBUyqiqLRcyqxP3Z2CWX5Y2ko080pY5cTWoPsBQ55M9o+wX7JiDM986m3ltyVxF+xa
	J0XfWrVBHe62unRNRrxrqGxliw6+rK0s6jyxKrMAcCfev51aJ3ovM+VHptNBA3xiNCYErPz5ZNqxT
	71EFcGZAtUIe9QD+HoqW4hWVFG4qZBNDiBXxixiKGcTmc++TenTkJDvn8zSYuSZry/mqUREeyy7+f
	2WpMa6PUNslxqDGvkJv2H+Dwthnfg/vDNPNhHkb2XqBtelzkrcfrG3YphAdTUcZeYeXionJkthIN+
	mgyiGbSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1y-0000000HNP8-3ZBB;
	Sat, 24 Oct 2026 03:02:50 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKS1j-0000000HNMt-2A2j
	for linux-phy@lists.infradead.org;
	Sat, 24 Oct 2026 03:02:36 +0000
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6f8a519e215so1041524eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 20:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792810954; x=1793415754; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KzYwebK8+EyE5IOADDn5pE86fQ/miF+9X0GS6d/yof0=;
        b=b4CkU/pjfiG4l7rGPAVwgpxImZqyT4IjDOoU+WlNXYwfn9MRdVI11MWdTPKLvOncaq
         DzuzJOCL5cPIOtgzKS47dYuu/HeIe4yM9QF3dP690vlFfSpqqnwWP+YBKicEQJEgZxJW
         bkdCbOlVY9qA45DEr6kdnEJYHlHcbHP5R2meS3M3JPij+Uq3FaHD9VERrz7CT0GkenfI
         OKx0jPctKYPUp8eLnWJ/NLZ369gwKBRSZ75pzPyBYP3ifCxWkCWBkskPSZk9gwLz+c9g
         Q3ZLqHZsJZwcPUHTYC6py9BJ34jpqM3hZgFERmEq9T2IXESpbjz9G4jj5VURqhmDiWHr
         1MiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792810954; x=1793415754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KzYwebK8+EyE5IOADDn5pE86fQ/miF+9X0GS6d/yof0=;
        b=UR+xp/yn4hAQcZMBJcVQJAreBduUGBNW1ABzbpJGUz+L0YVbhRUxshpQnyNq8YnUHa
         w70T5cm+zRph+uSi720ns7TYNzZi1HXMxzaCQTMQejNVIZZE91rBqxMHdUUKl5HtLyu/
         6/FmAo+/JVhvmJcUmmZ/FPNuj4kkdV8z9bZZsGdMqEgkoiyLNwSj7RpORX5TqLY4sc5p
         e19kMggrqpE+y1wta/xmop5ae90qON6ZCfe+Ql0fEeC5ISPa5OY/RHZCO4WyNNI7gjcW
         1yZmxn9TBfq9pVUqcl+goQWVGRSEyYUj29wLdCzpd70Rt7MZYQgMbE9kdr+pnZcV2diK
         4hhA==
X-Forwarded-Encrypted: i=1; AKwUvByoOQ0X6JbMS5KLgQ55bFGrZr8HzErTNq3SpNjXgsT9JOrg7uqisiK6EJChHYOFFA/uBeFE6dbK8xU=@lists.infradead.org
X-Gm-Message-State: AFq9FYI2YZPejBAaNXe1vSUCTYJHgSpZFUiOAgu85VZI/mk6+mrqQRIr
	1yRigL/jxdd1ISI+f4+VQCIxZiMuF/9N57zFqghlh7MwSYJbkvA0U2ZY
X-Gm-Gg: AYBFou3vsUyX38TPlVXFX+WR0R1ZWDio9tMcc8kEHudatd5fXA56R/6anXahhC7zwFr
	+w6x+EMZ7TDfgr8XxAnjOn1O9zJQsPP6AFBcaqDuk9WIfzmmt1FqlmUDgSXyerFmPDaKGsAHSRq
	fimwDtOjTYCe1VJyW0UuafELca8FIyuehzWbdw2fDtbU4HlsD2lI0Y+d4AwyuQJoMotllkcsdHi
	mOC6TWw/CaQfrNe24M2VRTTrtrG+xUnWsYSa/OvWK+56A61ilasSqtGQCRXQ0StxW3i+/1h9Qpp
	gOxjCotnB/KQgzT2hR0jzl8ArpVaOBkeDudWWJWJxH1tYs8k/aSROxM5n729OF3UXL+HVg4e/sD
	CChrVfDh6MDMyCuRnuVi5yjqs7EInqgRtghrM/v++V3NKnycZgkQ8S8pDyn8+Eye/8MTx04vueJ
	lTcxlpidi9H7x1f5wfJmLZW11Qqnels+EvyPxN2Xjx3xWhZOVwYhuljeNUJHWQ8gNfTQYxqUDIs
	+i11Yx+6fI54FsqRZTgXDdX4A37RxmC39cS6TlhLF4V85P6rr8iwQiuwPJj5R6GSiszCsuke7Hq
	Zh6a
X-Received: by 2002:a05:6820:5611:b0:6cd:3fdc:2669 with SMTP id 006d021491bc7-70ba14bc3bbmr133916eaf.42.1792810954300;
        Fri, 23 Oct 2026 20:02:34 -0700 (PDT)
Received: from jeffmr (63-152-17-145.cdrr.qwest.net. [63.152.17.145])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9e1fa334sm824552eaf.9.2026.10.23.20.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 20:02:33 -0700 (PDT)
From: Jeff Roach <jeff.roach0@gmail.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v5 10/11] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY init and configure sequences
Date: Fri, 23 Oct 2026 22:01:35 -0500
Message-ID: <20261024030142.13643-12-jeff.roach0@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261001-glymur-phy-v3-v5-10-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-10-3848c2615d5a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_200235_577646_5B33126B 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 01 Oct 2026 15:04:27 +0530, Nabige Aala wrote:
> Update qmp_v8_dp_aux_init():
> - Add CLK_FWD_CONFIG_1 initialization (0x3f) before power-down control
> - Replace PSR_PWRDN with LANE_0_1_PWRDN and LANE_2_3_PWRDN in PD_CTL
>   to correctly power down the data lanes
> - Correct BIAS_EN_CLKBUFLR_EN value from 0x1c to 0x17
> [...]

Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
