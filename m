Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61A89C02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 14:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUklPZnf8myjJHhAxiIgOyZNTz1iZb+GWj36kgIDikw=; b=bSCTpMeMPPHMJz
	Fh0ja4l2ngbLVT+w7WMCAIcJPPzo+8Y4H3EQZTwrdSCaejT8geGVtFjXyo2YqIfMgDd7fab8rMxxA
	KAJUidlkgSzK/IvKagxwz5cNTr74Fs+5KiRuIvdaAq9FA1sqqgzqvcXtt1TgjUVZQd4TqwZC4lFGZ
	2+gBMasHAM0w+rUNL+bP6jFm1tYlHx1Hsd6zBqANrGNZOtd+Lp5hYNRv3DzUOCIAa6ULU2cVA8KXV
	JJA6yVQDTEmhYvGOgZzVif7jVZCvVRCTAScnv3IKvyvRddPGk4KpgR304DAxo3UfLoHHxBaMTCFnX
	iZ0pzoYqt2jQqMXXdyTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiE9X-00000007lPr-3x4w;
	Wed, 12 Feb 2025 14:55:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiE9V-00000007lPI-02iQ
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 14:55:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51C9331d018103
	for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 14:55:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	916SG1gUix3A397XCQBzpFRlo+xOPFmr9pt67nE8rRw=; b=mNbYHnKcBEapiMyo
	OgQ00QSK00iEYIFe1gA9+kkY4g+oBVPCAeKMN1AY6x2CkFUdyV1LpYOIe2oz9DXB
	VWLERufiieWfXEEwjAGVRPF7u64DZRcYii/+7nPXreSwXmT2VG5z0H0We4ZLSCgQ
	X62zBeiwXvOGsakEJZHrX89TeKKQmskTdsSleL0HUKb35q3eDr5xORgaVs/sqe5b
	17eLhrY6LlwhzEskYeEPxzTviaHOyDCvPZkhknRugy10EAuxHXAtJOwKbuS7Xq+g
	sPn5cTF4KhOmtgzovuUlqyrHup/sjJ3kpegxgOn+86wMm4RDPPMxS99DNKbo7l3R
	Al8U7g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qewh7vug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 14:55:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-471bb8484deso631611cf.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 06:55:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739372146; x=1739976946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=916SG1gUix3A397XCQBzpFRlo+xOPFmr9pt67nE8rRw=;
        b=sSu7fbR2U8RKrYgfKXv6pISSKTGIIr4X+rNK23fXUY6aSlXpLE7jeD18gfCUAKlBQZ
         tU+pbZ4GcTXg7St3dR8z1w/Bh9kZrJsAAmB2XqEvfjgAbSNtLtPOA5Hpx1Q5bcQeagXx
         qmJrEWfur1DhNp6DbPVCi3Z5FIZD85TlGFgBo3zlyX0LaSlrs6A1wjBqM7BONXop3SNY
         kX3JTocnVw4SvvoXmpcpurAcs08NK+zKmPdUKp+iXe6p+CMZ3Wwh5veO3d/zBe4PCteF
         /OSgSrQYZPA7uDywC6EQ0dvIN3d6FdxyOIPT3Z6oTmT+bwU0kcdc3pP6QtsAKQTYgPiA
         ajoA==
X-Forwarded-Encrypted: i=1; AJvYcCVQIGKTNolaXHUMq7/E/oDPnSis8dhbNwmbNUc/LiXQ7E+q1FQr9YAFKrdViirm+H0OqMoTaqQRQKs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbBUM5v/YAnFvB50sxT1u8YSgi/0XdfPUkXJDSLmZAnsZ3Z2KL
	AXoF89X2qreYFQrdK5rmmtXGqoj17EtRnm2r3cYfQK0GqHTvRUwqHX3/nVPn2fGia3dMdprbkYo
	96U+s3VJVNFTFVsd+SFiKqpWG5zmRWoYH3u1xiWrPUnBVTPDIsPnN+31LPJnSRSXZ
X-Gm-Gg: ASbGncsRTFlhLzaAWaIJE8BRNt0OvDLPSPBO9O1k4XHPKT0w568s5p2iRmCtuDCLMAc
	mgqDdBAoS4n+GU8fYB/9TRhWlPsOVPtMkpaKVYL3n+Zw0keUhopXUpDwt5iCHv3oGpd9ixHBsrh
	jjvHXfWwuJiVXN3U7Xp9GvVYel91Nrde4ZSUZG4CGB4Z6teDXfc9fNHLyVR6d4OidF4od1gJQKi
	RiCWkvEPtzOhMVnoXQn7aN2yo/PmzyO47eEtFTtKoT7UYUOInY761zIErV5o4CXcIU0i5ao7pqc
	pSMVcrFzwrC55i0lFGzW/15yHxBhm9yYTFzm5lFDD5SxqBYVhOxuDGx+UnQ=
X-Received: by 2002:ac8:5dd2:0:b0:467:5d7f:c684 with SMTP id d75a77b69052e-471afed5648mr18796711cf.12.1739372146458;
        Wed, 12 Feb 2025 06:55:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzLBeiKZSyJ9lZh2Y7PO+RFQ3dmGp7ZGFUJgrbKrEQTQdh86uIFfhpBmJIWx0PHK0HA9YHAg==
X-Received: by 2002:ac8:5dd2:0:b0:467:5d7f:c684 with SMTP id d75a77b69052e-471afed5648mr18796541cf.12.1739372146109;
        Wed, 12 Feb 2025 06:55:46 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772f49361sm1279167166b.33.2025.02.12.06.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 06:55:45 -0800 (PST)
Message-ID: <f7a220d5-6866-4770-93a0-66e6d7b49491@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 15:55:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        abel.vesa@linaro.org, quic_qianyu@quicinc.com,
        neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
        quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
 <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
 <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
 <fwfxhy535nm7227wzlwlojxyxrr3ond5hmc3njqbcje3usfh5t@hqrnbpmdqweg>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fwfxhy535nm7227wzlwlojxyxrr3ond5hmc3njqbcje3usfh5t@hqrnbpmdqweg>
X-Proofpoint-ORIG-GUID: n2n0TmT70Fl0CXAsqaE09u7a6kZLDM5P
X-Proofpoint-GUID: n2n0TmT70Fl0CXAsqaE09u7a6kZLDM5P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_04,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 mlxlogscore=999 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_065549_057623_E1B5D2DD 
X-CRM114-Status: GOOD (  14.69  )
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

On 12.02.2025 12:07 PM, Dmitry Baryshkov wrote:
> On Wed, Feb 12, 2025 at 04:31:21PM +0800, Wenbin Yao (Consultant) wrote:
>> On 2/12/2025 8:13 AM, Dmitry Baryshkov wrote:
>>> On Tue, Feb 11, 2025 at 05:42:31PM +0800, Wenbin Yao wrote:
>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>
>>>> Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
>>>> whole PHY (hardware and register), no_csr reset only resets PHY hardware
>>>> but retains register values, which means PHY setting can be skipped during
>>>> PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
>>>> after that.
>>>>
>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>> verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
>>>> available, skip BCR reset and PHY register setting to establish the PCIe
>>>> link with bootloader - programmed PHY settings.
>>>>
>>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>>>> ---
>>>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
>>>>   1 file changed, 58 insertions(+), 33 deletions(-)
>>>>
> 
>>>> @@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
>>>>   	unsigned int mask, val;
>>>>   	int ret;
>>>> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>>>> -			cfg->pwrdn_ctrl);
>>>> +	/*
>>>> +	 * Write CSR register for phy that doesn't support no_csr
>>> what is CSR register?
>> The registers of PHY.
> 
> So 'CSR registers for phy' means 'registers of PHY for phy'? that seems
> incorrect.

"Control and Status Registers"

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
