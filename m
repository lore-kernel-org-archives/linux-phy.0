Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD81C982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 08:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiWuC6AMNwJAuz2OcMcvlIo42jxsTwkqIA8xBxnB8/Y=; b=Y6/3HBfgmddNPW
	98rz/6wzlcZIcWW6A7+J6PfgeNyrtV7fdq5kfaiJ6r13Sa3rnnkmBkgUVwEIa0ovxZYVi0a+8XDbj
	pCferfWQYMhjNmHjb0pgEAWB35XqMiIaWKFIA2ta8onrpmcWyabGpOSPKW2GLMnFFFrc0HB5vzn6r
	auzq/WTFQxxNMpZDQoR94xPFWB5UW488Mu07BZDIDYREYsh7BkISg5R6wHW+TD/fO/uf+q50pCNYL
	6iewO0NVQcRb4q5vRrmi+pAyhZxLsIF6/+ZLPuCTGSVaAMmJHzrnTtaMk/pC8KUMvmbq5n7CAozUU
	qfYY2/V0q2bVP1nKdVWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vcl-00000004dMg-19ve;
	Tue, 22 Sep 2026 08:13:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vci-00000004dLl-32HI
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 08:13:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M7X0wo3044188
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:13:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ITZ7U9bHx3O3ChSLQaPRjkc6
	o4GzrK34Wvd9RlYR2g4=; b=VunhVUXCitPOFSsygH8ooVCxBlRkr5e57uV/NM++
	MKo2syKt1EaVJzTkxbwFakrD6UkSCUyzzWAtxv6MxYlWrao/YzUKZz/AolFTARkI
	/Jomp+R/9tfFEkcudRzDEqeEd6FMtTDL75JdjIYonxFW/RjbSY5KIF6Z8OKhzBdC
	lVaSTjMu3xWWD6Go+Hl0yJiBrGR+9vljxzJJRwDz9Rg8Mh/y+Hyv+hI6Reort0cY
	Qr4N9QpbAPlejQariDGciAKUDrKuhPbyDAvw11XOwSJU0DORiTcPDMZja1gWd5N+
	a+ciYu3Gtd9p5mAo7LR1WZbJYOe3K/csEH3ZnPqPqOfHRQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gufbashks-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:13:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2df375fb9b2so31665095ad.2
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 01:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790064786; x=1790669586; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ITZ7U9bHx3O3ChSLQaPRjkc6o4GzrK34Wvd9RlYR2g4=;
        b=YVk+2C88awqccANMh1GjdI0wkdZSkdjZM8xMApEX95vP/IZBlYiiysuvoVPBBGWs4b
         iIEXG9ESBeVdqcOdClQkPbN8BXZaZtQ6X7+Xx82lvhzwLafTSAN7NmPGAkXmVsIbG9m8
         YIyKkrjl8lq4ASY2faezKWMaKsDX4VVZCqtnpUqUMMwZkicvbn53U0ftY6BboktweVVc
         W/yueY+WOhr4nFBaElWP6ik1d8t3Bc+uAkQA/U9i9QoJgdVrcKzFYs53iHgdLFZ9D0Cl
         zFEUnyyOCD9BAMPLGAPUhIygcfQ/6SZWVx55yNRSOm9XXqckDAOCaVRY3MUqx997eC7I
         v1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064786; x=1790669586;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ITZ7U9bHx3O3ChSLQaPRjkc6o4GzrK34Wvd9RlYR2g4=;
        b=dTQAgX4fkdmAVV8sfnkw+GwRK01Ra/Fi66I+p1tA/Kn8cpAb+Fu9pcMa2NjwcJsnHW
         miw7hxbyGIdZoOo0+h915n/ZcdASEJVjDCQeBJZ3pVv+OKWTyJegsj4jabEehoBCierO
         gCnYcoJOinS/ubbrIZ3YNRr7x1WeNRZeKZqy5uJDmApCYz13hRiphJMpy1dCyx19Ek1a
         CqJOxsM/TQgNHaB/OZUuu/1pOMuX/+4j1ig9jEJHu0JG+MrCPw2bxKQBH9JICFVNswg+
         ylTCQcfFC6qe1G3VVlsZ2K03D0x9gYhThRv8xuvZFW1rRw1nNRbv/7Tkm8ULpQjG0MRw
         uv+g==
X-Forwarded-Encrypted: i=1; AKwUvBx9ysoEYjZJeLyWkGdXby0AaBa0dqylwFOZk1iFGCu8uZrlnxX/bNLfM/m5II0GwGzQ9NDzUn0cWkM=@lists.infradead.org
X-Gm-Message-State: AFuF++k1hcSg8TZxojo1lQsYrxxGfic+7amjVsF0A5mvsHoZe9WS2oJF
	tDdL9RIXQvNdTkHjKxtwaXhSwh6sTg2nibJoIa6uZq2vj8k8CkWXuhlnLOV9tjsPywRsD8fqiWL
	30BoS4u+OrVB+GiTKC5ubVDojszRVEsaCZkI8rXmnCGohKKms8APu+lfK0QLPPUL485I9
X-Gm-Gg: AYBFou1egYbHjOoaDAM93cAhkwnfu9d7YYPtqKtwoC0Mg92Dp+PPfKJaadA7hGlSK/Q
	ja6f4bRzJtfaPsOu++CVeUcjBNJRHK+36++0k4JLfKv9KZFFl6ERXrhM0rzFD6Q+TLOvh7t/Pft
	y2H0bhoJr4voNtT0ukOxmDcsuBSM2p3/Kp7RzkK6l074alwLuoS6y7R+8QkwVYwlRx4mDbfKQtR
	C9h4TrHpTcgzZGL0+cTgy+OPxD8VZHrQn9I4lGwpBGi54tijlzyGgTk1TBif0wrbWmd3uk4BBeX
	VitN4eT0x+3KNQiuaJYbUfcEfmKa7Nux1kzX7p4MQ9vKcyPnvUuN/QqSv7HmjRCKgpNynKHDyzD
	x/YAuJHL+tf6wxs3LxTrwYlLncnUdrMJ2HMDiR9/hUw==
X-Received: by 2002:a17:903:1987:b0:2dd:ad73:c98a with SMTP id d9443c01a7336-2df60b471c5mr4789795ad.34.1790064786286;
        Tue, 22 Sep 2026 01:13:06 -0700 (PDT)
X-Received: by 2002:a17:903:1987:b0:2dd:ad73:c98a with SMTP id d9443c01a7336-2df60b471c5mr4789505ad.34.1790064785891;
        Tue, 22 Sep 2026 01:13:05 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e6129b37csm3678940eec.15.2026.09.22.01.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:13:05 -0700 (PDT)
Date: Tue, 22 Sep 2026 16:12:58 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v4 6/6] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe
 multi-PHY support
Message-ID: <arI4imcmjEyVzTOo@QCOM-aGQu4IUr3Y>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-6-ed05c6e09240@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDExNiBTYWx0ZWRfXzECuBud6SX35
 KwjEppNHlf5+TJ6xhLVkRcnwFv5uwGOykAtM5VwAZVBvPlbaJLLEF9Ewh9w7GijruitfjEirSCz
 33aZSBVMpmevV3OQdd+MTm+648NnUNMBoR88Cq7yWqsgd24XwpPiPnh+YcHLMhfGegjv8xOSJAQ
 jl5EBrYTx4PGWa2ytMF1ruQN2pdolbH5SB5ebQ+1RwsIbw2R1cpVnw7uywUewdMa8g+7W5kqX6Z
 jaKGjMEDpb+lOE43AB181sG4reyhVClGYp6Z0ze6youPQP7VjjFTHfZ1LUIcKFt/eBnK9WQMB+Y
 EWO1NPps5Fxfs7h5qwQrYcCJt5G4JMctuQvWcUSQAqu0RabwPXg+yZFOKHD7RdNRoyNPIcTjY1J
 vy5Nn+GgpnMGGekAooy1KLyqJFzolUKx7/Hkj67Z93DJiwxlVEz3/v5y6bDJsG7cMk22my288x0
 IlS0GQ/AmA8HX84t2MQ==
X-Authority-Analysis: v=2.4 cv=IYYSymqa c=1 sm=1 tr=0 ts=6ab23893 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Y4sVft1UDeOkrP7wHAgA:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDExNiBTYWx0ZWRfX9OaZn9BkNFJ4
 k9jPeYeu7CCyEO5Hqozs7xYwtHl9IoxH+S+u1i4oaYtqCqd2rpnlr6N7Ub05s4TwZgvXGcCWpRn
 8zpGwymlOWdO9IfpAJ3kOXUigtev4qk=
X-Proofpoint-ORIG-GUID: EP7UqP4OmbXyyw0XCKrjliVgSYu8spS4
X-Proofpoint-GUID: EP7UqP4OmbXyyw0XCKrjliVgSYu8spS4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_011308_879379_776A812D 
X-CRM114-Status: GOOD (  16.32  )
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

On Mon, Sep 21, 2026 at 11:07:14AM +0530, Krishna Chaitanya Chundru wrote:
> Add support for the Nord Gen5x16 bifurcated QMP PCIe PHY.
> 
> Nord has a single PCIe PHY block split into four ports which can be
> used in multiple lane configurations: x16, x8+x8, x8+x4+x4 and
> x8+x4+x2+x2. The active topology is selected through the link mode
> configuration register, and the driver exposes the corresponding PHY
> instances based on that mode.
> 
> Unlike Glymur, where the PHY is initialized by firmware, Nord requires
> Linux to program the PHY registers. Add the PLL, TXRXZ, PCS and PCS
> lane initialization tables, along with the required power-up,
> power-down and soft-reset sequencing.
> 
> Add per-port and grouped PHY configurations for all supported Nord
> lane modes. Also add support for regular PHY resets in addition to the
> NOCSR reset.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
