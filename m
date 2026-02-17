Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6EA2E9A031
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 18:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iUJdE7XvgDcw/CCkmvHH1QbklbuFgdMLV61iYho/I8=; b=YzqbOENtT9wLk5
	bXpGcuNPKeGFnir3oU/Qr7w5cpIn/tWJ2uHO+NNAaUImNHBU6ZQJCfzMI6txL8GeHu+oCUa4UqyiA
	qcuRyKf4T/E2gbpQ78kaiv2gwi6vWd51liVZhxe/yho77Fj8tmPkZxSnJsOxxd0ebjIizLPgwXzae
	1zRHUpK9o484lPhbWBojieY9LhblJlPTUc90oslre9WUyd3tnxrUCW/wW+kkwGw9yvWhK1nhAEPkv
	mayFGSUGPJdfF5rg9ujteVWDQoSEO8rW9I/kXaUnM7AMmIsOBQpXSm9ud06nEDLom+CWTumOJOp/w
	Y9hzytvAL7aNGCf0zspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsQAp-00000008ld9-1Jcy;
	Tue, 17 Feb 2026 18:51:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsQAk-00000008lby-0eG1
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 18:51:49 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HGelBD1601378
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 18:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gpHs+q5sc2ESyRXoe6yeXOmM
	BULgitSi7HAS3517law=; b=IpcZoKPlwXP+qSoGmhgA7aZ52B1WDxH60u2yqNm+
	a5XxCGsJPgPhfqBPTXWf7qOlgQuVwrPxC4KfNYzmebtTVsM0jTq0mvnvTl3y/f/l
	6v2h3wLnFDfuhLBvv9e9l1v5GYpyBLRSussMg7oMIV6Du0nO1tQ472vJygiK67R5
	P0kLbqvSLaQcGAaOkSexpBhyRexouLT8bBsqxmA+q/aCA30GQZ+4pBiBIuTqjQk1
	EznJTER67p2oqpav6zrzwHrh3M0d0iT78Ytmoy/JhqgeRF3QtswLNt1i4k63rG2N
	Lhi3X6WzeE+BEFGXcEhHliUAmSdscI4qSswmFpqCrBBvlQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tmbf3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 18:51:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3545dbb7ee6so3481578a91.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 10:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771354304; x=1771959104; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gpHs+q5sc2ESyRXoe6yeXOmMBULgitSi7HAS3517law=;
        b=Pfz+wABKO8Rhy6EjU15lzx5zQUPXWFjIhh+JEfyF3dQ09IQc+yFetlpr6oVjtmeNip
         mu+qm8zvLVZ3WGtVyxALHhQ3mxkSDmY5TWeccnp342OEpP2El734cv1NKhvq8HGMlpgo
         nwwoHnOIvJAptMcoTBwokjFclFn2hylWp1IcoMZsx7X7eej5xcrVwnL2xgZtlXExcbhN
         CDl8SzK/k4/td2TpjtnD63E6EMu6AR1h37kHw2zHTZ1UksoZogpVghe63AKHulOwfXez
         Zfn8N041pobwt/L6uL0A03saTcDrDHGSveDGkz2sNl6+/TrBScZOaq2j3I/TstTeNEsD
         z87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771354304; x=1771959104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gpHs+q5sc2ESyRXoe6yeXOmMBULgitSi7HAS3517law=;
        b=LqXBDyL8tUFT+GsLkadO4XfylI/of2KzsvMtWJhTOdYlickc64wwYZ5wzgkNSpSPCb
         lZXLBt7UhGQp4kHJJ0mDiIGtb7d1naL40F6YFUJ30XttxDBt4Gr5rVrEeoF1ou1cxYgq
         J1RXoDE7EA+p2/nMuOdv3dnhNgXCz8TYT1tjf72oRclgtKHfqzzt/STnMeA1bFnH9dOE
         B734QhMC+0TfvmcANlLQfb+kaz+gGWYI4Zbux1SIN0gX6q2rlMQqocKxI9GVs/tR0fMC
         StUbS2zM4mg2Ij7qaT6I9Ly1Dx85vkV+d4DgPaHIfdIYgU5mZuukLOwnxNTWEFKf3wWl
         +WTg==
X-Forwarded-Encrypted: i=1; AJvYcCVQFqxEsuuMoiIIA7Api+/Sc297L87oMnYty8Y4o2ddDNmQWQwVae2l1VA+FDpItz7VWmPmvholnGY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIJqEvHufHrdwVGAOZP6toWgMSDTfB6SLWXPskoRMB5k3Gx7r0
	Pgfncu0bi50cjxypF0RSd6n1hB7sYguF/ae0DwB3Y0JAu57MaMIVoLHcPE74B733x3xSxKguz2v
	lSKfszKZtRfsBq+MMdqeGDefTya6ab+rvqJO9+TQAumwj5Dy7oHusSIj/s2nblURzvTqV
X-Gm-Gg: AZuq6aLhetZfjQwiTH7kWSnnBQpufbWkoXayo1+MZ8UVvm4hHCZj2XvZtk0zf9z7zGm
	1yUviVxlwW2WHls9a+jjFAXO7w78DB02AJArB1uEAzf24GvyxzCw95ewhbSWbwJVBzGWUB3K+fy
	Gm6Zj+qmW1qtvoCSbqfO2wbHmzclfRXkTQQX4mpKH5Dgplrx4jQ4EE+kgjI4ZX3iogIXH648A9e
	UOpNrLWmjhg2sfrVBm4d4L2NDK3yjgelWq2zUtSyVfAW7QGKi0RNz/lXmFiELIgr4HOuAZMptvp
	4etidm5FbYowt7qDIKUORZFRGWjC/30g9rpAl/1tHnO+3j0JYaQoyzar/k0k5KoLVaqMZTmxM8I
	wr+oiNL6jeNBcVawuqtF7k5kL7Y99TQDlEB8=
X-Received: by 2002:a17:90a:e70d:b0:330:7ff5:2c58 with SMTP id 98e67ed59e1d1-356aaa98b25mr12221101a91.7.1771354303843;
        Tue, 17 Feb 2026 10:51:43 -0800 (PST)
X-Received: by 2002:a17:90a:e70d:b0:330:7ff5:2c58 with SMTP id 98e67ed59e1d1-356aaa98b25mr12221081a91.7.1771354303326;
        Tue, 17 Feb 2026 10:51:43 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567ebc4331sm19801025a91.16.2026.02.17.10.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 10:51:42 -0800 (PST)
Date: Wed, 18 Feb 2026 00:21:35 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 02/14] net: stmmac: qcom-ethqos: convert to
 set_clk_tx_rate() method
Message-ID: <aZS4t5Uf21PTOQA7@oss.qualcomm.com>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <E1vjDr6-00000005fQ9-3RUD@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vjDr6-00000005fQ9-3RUD@rmk-PC.armlinux.org.uk>
X-Proofpoint-GUID: Ye9b2Ix-lUdHUgFty7O-UvcKxfGjmbC6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE1NCBTYWx0ZWRfX/CtD4xsYZBIW
 peMt0yVdpU8L5hVH4Fm4mnFtn6sLYbZD2E+nHj81cho7cEQ/EzqYQjBpFfOcOzSeB+WlQT2FpWS
 u5neKtCEr2ymhj9oJ/0Uk5uB17v7J6e9IVofuhD8kGBjjJdfmM3bSQXSdbkFxUX+qiMa3VfxaHe
 NfgXGFcavESq2bFrJBjvFMLpWvdCE3sSXwMVMhymQIFxFtZpN723KpN2/xbBis6tEQ6euMvEB5d
 onz81Jl3OPq22lPVO8mhMD8jbRV06r6vBr8JkQlKAGLk0J3aXnPx1mXp//ETEuVYJFZrsB8WnJ7
 U68J0t6rDSd+piZCOKBLsnBGlrS2U/v7hdJpJ1q2hkWhf9KGXMglIjTOpQg5tRQDu/ZmrW3JuzB
 Kba91ibrlEeqQCcV6fjzd794KIo7u7gt/14RnjH4dux39H31if3XXkl51G/FDd7xXgr8jVXUA6P
 FKzTdiEVbXcNbO34FWw==
X-Proofpoint-ORIG-GUID: Ye9b2Ix-lUdHUgFty7O-UvcKxfGjmbC6
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=6994b8c0 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PHq6YzTAAAAA:8 a=UutzXAvyMBxkWM3TwEQA:9
 a=CjuIK1q_8ugA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_105146_369815_24A991A3 
X-CRM114-Status: GOOD (  13.94  )
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

Hello Russell,

On Fri, Jan 23, 2026 at 09:53:28AM +0000, Russell King (Oracle) wrote:
> Set the RGMII link clock using the set_clk_tx_rate() method rather than
> coding it into the .fix_mac_speed() method. This simplifies ethqos's
> ethqos_fix_mac_speed().
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

No issues found when I tested this patch along with "net: stmmac:
qcom-ethqos: cleanups and re-organise SerDes handling" on the QCS615
Ride board with the KSZ9031 RGMII PHY (see [0][1]).

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan
---
[0] https://lore.kernel.org/netdev/20250819-qcs615_eth-v4-6-5050ed3402cb@oss.qualcomm.com/t/#ma85cac924488d580b971e6477e7df30dc7e48045
[1] Ethernet is not yet enabled for this board in the upstream kernel.
    The changes from [0] were applied locally to test this series. I am
    trying to figure out how the board deals with RGMII delays so that I
    can revive the series.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
