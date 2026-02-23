Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C4DBE98E11
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 09:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQYKiTFy0Jp3yAuJuZd5zfAfoSSB1KaWdv0FQmOSwHI=; b=4r57+Jq7CiL0fy
	8zSqxVCPPEgKhodPmqrxw9pBam/cfPvu89xRotPtyp/5ulF+7DV7KlwcRCWxTvGrXjt0+B3Z3zm1j
	gfKiZaVtZ4g9CiJp7j3Nosn4cqx9A7ZaQq7bT5Ul83CCCcgLgUPf89p4Gm9WmhOz+eXxaxhvMJoFu
	K800vK2TrX+f0XqtJ0LPIvYpUjMBjvvgiy0vU9Y0BExgc1BASy771mHjIZ7QAhKkRYrAxmjBl+i5a
	2RkzENxZHioXp0EuhPsQ8C7eOxTqQsTb5bKcYa4aQVBWV/r9PTv/AlytlnTWv8F3Nf4hdCsAlBJ3i
	JTIYWEPT8rVfpBlAxW8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSZf-0000000HZia-31pZ;
	Mon, 23 Feb 2026 09:49:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSZd-0000000HZi4-2V3n
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 09:49:54 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MNUZvp2013890
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rkJsbjgrPmHKuVtyeITCWuo6
	Qs6gxTemZ0gXWydw0S4=; b=MCroSxMvREUglMMehsXfDVNamKc0VZ2SKpcGWJ0E
	KtIeAX+q39tjNd4AxG8zfLt9aSVvhKXjUMeriw+of3z3bKy8KMHwJ5ONzmMkdZF+
	viYUPm3k+rHg4g3UnEFe1heRxC6sAMYwsdUp6JN7iEOZHXZBflhIaU7/Mb7MN3Ay
	IvnDpZz9UVH+J6N+9hv2fnsUKL6ELzl//e7qYElVE1Dxnn1GT+Nzv0Lg9JOzhAWz
	pVQv2fLokAUCp3WPaIIE0Ma6lnuxR1Ufrsarf0OKt4tWTu4br/A4fVert1QvQOsj
	4+8mcBHgYqY573DG4sdZVwiYgpG6xKVlWWGN43WC4PIJew==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbc7sh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:49:52 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8243fc3fe8eso16070974b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 01:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771840192; x=1772444992; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rkJsbjgrPmHKuVtyeITCWuo6Qs6gxTemZ0gXWydw0S4=;
        b=CGlADuEyPE73vFWSwWPbwifl6KGw307zFbwa6BQlfiePrzpIzY63CWcCnYoYbUi/PU
         SIo+6gwNMsMtLRA1Fw0OwLc914iC2P0UxTTcQbPtny6X2uXFV3yh8o/KCmx0by+lfaeW
         IBmvAcEEMgAVVCYRDF5Vb46u3d7sM68rtzmwtgbJ1P1MppEATCLfvbD8oscdm6AvOR50
         HXqgFxB9iU+rtTbW9+SubKyxmHJ/pg3hFSqp6WjTr7AwH1uRiDZzU7AFBUjnSX1a6PFR
         Z606yPdKRb/7+DZx4Pdgg1KRBqigO6yCR+7aDykKKYSVX5U9zwhe33bf+2HUmtAJOcCk
         jM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840192; x=1772444992;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rkJsbjgrPmHKuVtyeITCWuo6Qs6gxTemZ0gXWydw0S4=;
        b=NRjjpMaChRmHc/bsJAqw3KENAmoLFIqavRmglnLZTdvRcBX9pZvpLR6bzwoTuoXJp2
         SWoYoUShiP4j6qDkMeJdMZejCN9a0+EbyfOV2Zk3KNE+d373UNBv8pk7VtFPZ4Dq25gt
         kLRDsYkVlKvigBR3qWf5aic00bwgK+/k1yF0W/gfmupGPRcVHxyqGabqGRZBTFcCp06h
         /URo8W7gZA6AU+3blqHuAx0ugrCPUm5L33Fbv/3smt5vdlCfmL3eg4tUzkZe72bz4I+8
         Im+xGGb0Bz52Krre78UKdmv0aJwrkI8aRUOSnQ8EPYVVjTDBuTFlTbaMtXfnl0+GwikL
         ddBA==
X-Forwarded-Encrypted: i=1; AJvYcCWdyiT3LeNIjYNq0NWik43M8JOgWEbSpsbJhLb4B1la6R1cX/Z4XGclDwx8jPi5I22KTy3ZGZIVrhM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/VAeT1xwH0YeLEp6nOe3GSdq69lDWVguUUaY2y2rwGi7Iacx9
	LyC20io6B8aql04kPXB+i6Je67cwecVdybZLgBkK4Pfz2XJ4EeDg2rBEzBxgcZUP/tKCyGDg4NN
	w2rwtJQGuYwv/N+Y9FNNYY2oO5zAvAPmpSEtnMH/+3Cuc6zwXJyJXUcTczmrM22uUGNZR
X-Gm-Gg: AZuq6aKQ9Iw1oCgxH4n9PBi1BtygPkqknvx0s4nFkTZzGa6oA/Z6X+GdzrONv4Zz3hx
	+Vp7YeoJ/istyQDkh76qjyl35DPA4mXB8hHvC5GPeU900BXi/Udx+L61oz1WzEk9R1KPx86ttDB
	QrrZu7TEQmUuW1/VhTH+6K4jgJ2l9QY39KDy0Y7wylYZzSBspUJyJFNtXbzPsiOaj7Sy+mnb9yR
	YRtiuScwzhhDhHP4KIzDASZuT9952X8zwOUiBsSJ5cQJceEyIFS1N3WYb+ji7F2cgGycQOGWcDI
	ELIKUF+AH8RnA1s/OcjCOaNle0Uf3x0B5zH5RZvCx6BrORcda7WzD/XGCKB2qL2O9AQYIokOZpM
	F21v6/5/+x8PJxvrjN7Et9NAWHVoSMFHxtJw=
X-Received: by 2002:a05:6a00:4b4f:b0:81f:52d9:5f5 with SMTP id d2e1a72fcca58-826da8bdbc3mr6321590b3a.10.1771840192211;
        Mon, 23 Feb 2026 01:49:52 -0800 (PST)
X-Received: by 2002:a05:6a00:4b4f:b0:81f:52d9:5f5 with SMTP id d2e1a72fcca58-826da8bdbc3mr6321581b3a.10.1771840191756;
        Mon, 23 Feb 2026 01:49:51 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8baa34sm7795039b3a.51.2026.02.23.01.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:49:51 -0800 (PST)
Date: Mon, 23 Feb 2026 15:19:45 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RFC net-next+previous 0/9] net: stmmac: qcom-ethqos:
 further updates
Message-ID: <aZwiuVeEAcuEnP8F@oss.qualcomm.com>
References: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
X-Proofpoint-ORIG-GUID: DSPxT5-9AY3FX9YlEU3cmmWIZDnioc_I
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699c22c0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=PHq6YzTAAAAA:8 a=EUspDBNiAAAA:8 a=M31p6wNruv26cYMHQocA:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-GUID: DSPxT5-9AY3FX9YlEU3cmmWIZDnioc_I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfX7g4NwDW8wED0
 B0slNq1y8bP7tdCJO1ke7k0FMeM0zDZHLwXHRGQhU1Rp1Gw2sAse+BioSjmgaqCv6CsMGRjdrrJ
 zeI7HxbsJthDRL8vqkvzzOrG0ftxBPlMfrHk3fwCD69gbnQS3tz23uap4EdSZ2O+c1OOcBy1ho/
 ZyzKJt+ITMxJG2s6QGh8l0mqD97qr+laq1ggLD72AmSUzTz5mZqgIUs5WXIZ8eGD1EwJfX9N6CO
 q6/8Il8Gm5aZx+F6UtcXk1j6Gm+eE1A/b5MDkIg0hwcXcgNLHze3rStL/f9mSYHRSw83E4qTxki
 nBodt6fb0MQOa+I9Zc5n1QCY3DjZVltXHnt489pDt0d2o54cwLK48rVD4O3ToBf/FV2PmUvxAnm
 S/dw7+dPrqc3v/ZAKYCTfFxEck0Zl65MtHxm3NVn1cslr1r1gxOvon9peQU1KBlUlB8NWYu7VIx
 xUenvJxTD05svQyg0Lg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_014953_635471_F0B5729B 
X-CRM114-Status: GOOD (  22.33  )
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

On Thu, Feb 19, 2026 at 12:49:08PM +0000, Russell King (Oracle) wrote:
> This is part 2 of the qcom-ethqos series, building on the previous
> series which can be found at
> https://lore.kernel.org/r/aY0aJppQWUC52OUq@shell.armlinux.org.uk
> 
> This part of the series focuses on the generic PHY driver, but these
> changes have dependencies on the ethernet driver, hence why
> it will need to go via net-next. Furthermore, subsequent changes
> depend on these patches.
> 
> The underlying ideas here are:
> 
> - get rid of the driver using phy_set_speed() with SPEED_1000 and
>   SPEED_2500 which makes no sense for an ethernet SerDes due to the
>   PCS 8B10B data encoding, which inflates the data rate at the SerDes
>   compared to the MAC.
> - allow phy_power_on() / phy_set_mode*() to be called in any order.
> 
> I've included the set_clk_tx_rate() patch as that was tested, which
> would make applying this series awkward to apply without it.
> 
> Mohd, please could you test this series - I'm hoping it will pass with
> flying colours as there should be no change to the order in which we
> program the hardware. Thanks.
> 
>  .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 52 +++++++-----------
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 62 +++++++++++++++++-----
>  2 files changed, 68 insertions(+), 46 deletions(-)
> 

After changing phy_set_mode() to phy_set_mode_ext() in
dwmac-qcom-ethqos.c, no issues found on:

  - QCS9100 Ride R3 (AQR115C PHY, 2500BASE-X) - 2.5G/1G/100M
  - IQ9 EVK (QCA8081 PHY, 2500BASE-X) - 2.5G

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
