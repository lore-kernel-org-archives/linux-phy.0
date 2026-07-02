Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76478C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AB7wstjAcjRP+FAvamH/nCCZ/jRiFYl/7wkYOKrTOT4=; b=XHq21F2v1UuifG
	U9WaP5WUceSlLkL6AcXPwKRuzvMjpO6OTMCwMoo3OJY5Q5vHBFOIp/9s53o0QmJui1nq2wY6dlQeC
	Wa/lUKb86CTIGiwaJT9h8crxe4QPpACWo3rWZrV3apR15DnvMUK8UqXiffNhiT6caJWBWwLKmyzr+
	YW7kPD/a2CRJAmFza3p1YtY7m+F8weCcZsIG8Le8Sy+aaiiyvxIrBQIJ7K7d7J5WIPXfXWV2ywuI/
	4XzQ4zRFIFVa1qtTuIrx94kM85IrjKTxhOA1qUSpdyh7fJHHmG9xGGPvDM2TeJhgJUIr8HviXw6vw
	NN3RoQFLf67rGkMSLZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG8n-00000004PDD-0y4T;
	Thu, 02 Jul 2026 12:03:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG8j-00000004PCS-2fSS
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:03:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6628eh8Y3049477
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:03:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XAXQPHPTRb6mDxvmbYjOMDoaASKp2Q3eEFRTSdWK7SA=; b=mWWd5PMSS8eR//L6
	oaIzvzB2NI1MUYv1u/Vf4YfuFSZTe7qmHpXoQRtSlIA8Qya0bj5RV1DKNzjfZlpf
	g6OSAzDpN9gm37kpQyB45WWYUH6YbWsJ2RdI9SbsP5wUg9Hd8WJ0wfCtdwxf/n53
	h+V++u5fAFDwqpCq1ok5LhgyuVs8MJdRJYhwZpH50YMYGPWLb+fLq5NVgaazM7tM
	gKsoKRCi1NZZCQi5/+71XZWnj9FbZWuXDTMbHAic7pm8okDXBqPSDoEHTRKKZ+UT
	XXlrvmZ1agVPUD298ayV+dm/ib3E0E2AzJIhK5qc24qsZmenLRIah5ZjEvx3TmIz
	lAm0jA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5541vk07-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:03:32 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-96917d46b8dso50497241.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782993812; x=1783598612; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XAXQPHPTRb6mDxvmbYjOMDoaASKp2Q3eEFRTSdWK7SA=;
        b=I8jGZ+ABvj5AuSzz8OLsz25u03TY4NJu5Dv+cB9Hk06oGdEtC0dzEDUs6dS9NqpFoR
         /9Uo3iHNN77DQMizXXUDFVTgZYE8JnSlsEBXV0Ypy95+MSJYfp/2sX6shd+Ef4AYHLcl
         9Mh4HrKWesF4QYzmHXXjNN5qfc1G+LWuGiDslSi/KgvPM76ZqEGlFH6cpXbI4iGlwS3q
         gyYiIP6E6cHQ3NFObMvlKwm+DJJDNfT4xDiDYmfPkbzhM/m7emt9qBCJiUcvwMO3Fdx+
         xnJqc4ilycGoQ8hLCVVOyWtSb1dzYmF7VfGsTLnH1gthy7gt9Yy1PirjZwyObiv4rJc6
         plCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782993812; x=1783598612;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XAXQPHPTRb6mDxvmbYjOMDoaASKp2Q3eEFRTSdWK7SA=;
        b=hI5txpQPcSHkTQ2ubuVhXuflkO/JLiFdxB2nzmQVaij+5gjiiC6IosR9u1LXEZy0qB
         2pWXg2d/9sT65NtVBVVUYCUhtnQQOtih5dyESPjvgQycfO7gZY6yh5y8m8spnI4KZUb/
         LAI1aBMceIuYrjAkQf+hPFgVvfA9IjPujMr4mBK3RYNFpFoRNoQEB2Z2BLBAB4Ym7+nT
         m2XZTcO/BiC+Je2z5et1kTIY4hvGnadojSu9/vxy5t4hMtZSTwugdX2KYiDsP9XezSQ3
         U8udEKsuzixaFvF05fNQBjxf4dKCHl/3Dtl7BjbX8iDNa4KlKQ/nITpD742nRXaJ/0H+
         YpqQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrqugwnx39o40QSYBQnQTHeZbTpUxLeGsrtAx3K+IbhWtnuL9xT8ntZOUdXDHcPOYhyeDM08g1jAzM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo6i9u91ixBs3WBBt9PXKIUCIy5GdwbHfUzw5cVou2A01JYGyn
	R4E9SGIrStlTRwTypjijhm9/5hMPjsfx/jTxJD1hBvDOXNPHAljKNmOjWJMk2PW43I7ufoObmJD
	P2Kks67wn4mpWNg+YA1v8q7iCch441SnGb3ImhICBN/g4s1AeJIrIMiqgfKwytLdvPG+Z
X-Gm-Gg: AfdE7cnrcC79deOW3PKuBjGCcGcYxPRjP+OJgZ8MiNOB0uxLWO/tlMwERmDqk+ajlXt
	wyAVyTPF6j0x9m3yzyR6QNJH0nTaJ9IZcjDtBHNvQyz0iz24SYeHA00VLJI7WmlDLDuVMfVZRYN
	Kark0MkzRI9IqjwNnTznHQmKXpkBn2+VlB0JclV4vXW5W9MPuZpGGTgWhBxKYKAAs6kd7CgEXZH
	sp+OOTkcVrOFWse5D07wdqnwIRnKoVPGPPKPdex/jWieVpWXC4XkrUQyNw0sb6yIuuOSkJyJ3wS
	lmnGcRSK9skWg3QxfnuJk0EQgcgERfoanzXmMjBaReSnSB6KRtodIB4KVcVtYAbPNlxK/6DpbEp
	1d75vWrGZ2um+YjWATj7vsQs01Dg7Z49cxVc=
X-Received: by 2002:a05:6102:94d:b0:727:36b9:dee with SMTP id ada2fe7eead31-73dab613362mr887604137.8.1782993811864;
        Thu, 02 Jul 2026 05:03:31 -0700 (PDT)
X-Received: by 2002:a05:6102:94d:b0:727:36b9:dee with SMTP id ada2fe7eead31-73dab613362mr887591137.8.1782993811400;
        Thu, 02 Jul 2026 05:03:31 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b6091cb3sm121646866b.22.2026.07.02.05.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:03:30 -0700 (PDT)
Message-ID: <9e87459e-1c2b-4052-9183-e61b46cd6bb4@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:03:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-qusb2: fix autoresume handling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-2-b5cf55621524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702-fix-qusb2-v1-2-b5cf55621524@oss.qualcomm.com>
X-Proofpoint-GUID: LjjAEA0mGfFE8FzwaFV3_WvxIhTUIhGz
X-Proofpoint-ORIG-GUID: LjjAEA0mGfFE8FzwaFV3_WvxIhTUIhGz
X-Authority-Analysis: v=2.4 cv=Xbm5Co55 c=1 sm=1 tr=0 ts=6a465394 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=Noy9YD-PShQqXFI-NKcA:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfX5wq57ulFYc85
 549MQnA4szd0zOqK9F4W+yln61rstortrYVVNaFa1aXy6lI7VLgUdmp+9PnycF1jWWfjCIUZJGH
 kXz/edyNxGC8FBLsf5+w47NXvbISCKc8ZJe5CRguXFCSms5Hhk8GVXsbO7Q3yyzSm3gi3ts3eyZ
 UGewQvNL0hZbVUtoZ9jWdeYsDanR+TeHw8XzEwO+QYE8A0sP2l9LmiO1+FvRcBxs3GMv4CPtY7S
 16gyRAujDh84d7k9t75SpL5ti1fhI0pz7fB2szUPGP58mXcD2Pb5c811dopKOMCYS1jaaiDNGVB
 wkRLHr2XLhYXmbLkwBWKwQ9i+ewAu7KEexFjIz7tbtppBoqySN5oMKTM8WCQReVMVTPMVUAP3mw
 PgqKwuCMZVdJ51EPB7FvooK1uWaw0jA0Z9TdHsGEbPhvXf8huS26Ocgavh7tkU6QixHDlNJi+E4
 RI1DrzdGWn/WodpithA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfXyFEn8ua88BOO
 jKpFpAbBDzZCy9DaJJccAeap36eWv8SfOv/6xHOZaRc586PGcjGZmWgP/EbvJArh6XZ6JO6+fDI
 0X+/LV/nv3QaohYN+dNC9TO0Gv5zl7k=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_050333_796356_22A4B197 
X-CRM114-Status: GOOD (  15.74  )
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

On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
> There is a confusion regarding the autoresume bit. Some verions of the
> QUSB2 PHY have it in the TEST1 register, while on the others it is a
> part of the TEST_CTRL register. When adding support for autoresume bit,
> the code attempted to simplify the handling of those registers, putting
> both registers to the TEST1 layout entry. In the end,
> ipq6018_regs_layout ended up correctly definig TEST1 register at 0x98
> (because platforms using that layout didn't use autoresume), while
> msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1
> layout entry.
> 
> Update the platform data to specify the register to be used for
> autoresume handling, define both TEST1 and TEST_CTRL registers and merge
> ipq6018_regs_layout and msm8996_regs_layout which become identical
> afterwards.
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
