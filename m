Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAF03CA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pQjkWfJtQa3cXShzXKCkqGQXPZBXG7aO2AivRt41eg=; b=f7WmGyfyDAY9rw
	d8hNCSGG7vVIpmlM+QdPhemL8xk4sfZbS4iV10wPo6W+TFFnH1PEQru3P/LCT/CRPNid7RmDIs8zw
	Ekia2a7eekltX/wxNFT3NHxYUN9Ibc/vPDPoDLsVkEo9UD3x8KACtIJp5lAiuK1lL4EgJkY5s5a81
	PcRLxLNo4NJKF6y6BvmpUE870OwmF1DwOSigFSwZBL2eIX36Ecu7CdYrq1sQJrBeVmsfU5deQCoTj
	jRtGdk5Rp7IweZz7Mm39nEwDmL/gCUUsPfMwi5EGOFZq/JiVlFT1EehgfF+QmbxSfqXY49pHV3NMF
	9kHQJXH9f2gNAgsD4chQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY2j-0000000CLja-1EzT;
	Tue, 13 Oct 2026 08:39:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY2f-0000000CLhr-2nfF
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:39:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8MFWs924262
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:39:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k+ncZHSuyduxlJ78FU1tzgAiXmr0kp8iJkZCM/xCfcw=; b=o5IG0UQhQ/fgtba4
	sMA8Cvk537oFr+AHkiMvzp51CJEqJdQMaTN/MiFnYysiBXLPV4Auu4zBFYFzqVGw
	5mC/wzeRHe3qi+Tkns/EIG4egoDFRgwwmGHV0KLcmTvTK71PCPprLcRko3P5ocML
	8+h/PKCLvRX7UtKZR3XWNurGYes9o5OJ9bhzIhmBPF4EL7QJ7WGG0mAfa/iqMKR/
	cC9AmDfgDHPd7MtzEHvtdAIK5z8AGQu0EMEZI8xj6ceY73D9u+wrugxiBz0pyMUf
	JxAVOKh/66/d5infTkL6NCDIzmofneK9jytwUgYY5/pTztiV69nBo6j6kMAx6RzM
	6fmD1Q==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h98h1syy6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:39:25 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-14373747468so724231c88.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 01:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791880764; x=1792485564; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k+ncZHSuyduxlJ78FU1tzgAiXmr0kp8iJkZCM/xCfcw=;
        b=BfNptiZYLg+Fyzo6H5AC9HY+7i6o01+XxIyIW+4sLQKLojOeMXxuwPpA+IhuQ2FKhs
         3dR5FcKYJPCOA9e5wm+ZJCesJVeUqRrvhV+vlBIBrNLkDmVSvyziADUzdEvRVwv1Wai+
         PK6sQhZKoDVMX6ZITI6kBKKYjR/0icMgc9jFy17QHubdqQO6OK63ktIw6bzNKvEbRjxL
         CM8wwscEtG2bLNE0NtuxyvSnVRO7XPdDUxTHJ8FCLHEuSlCw2ZE3DSu+m4KwI8h+WBbR
         9x+co0OS9vE3J3bFB7/S7D6fOlFUFsTyB/1vlAeVwnUmJx6scNU1PXooMIRWvE59OzN8
         5egQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791880764; x=1792485564;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k+ncZHSuyduxlJ78FU1tzgAiXmr0kp8iJkZCM/xCfcw=;
        b=ENHB5ALssCb20hYb6iVvmgFTo22GfPCquqtNwu1H6DGA48e5wLJzaj569NwMN3ZLbx
         DT/PGNnjFHhzogFViMz/Umi9RPonLrhlBha8QuQrnxrPRUKZm17yEcrbUga3J2EyIowH
         4b0MBvWYgmiPewHuFEVGGv9O1HMnaufOfAqDUYCidYP/5HPWQLXRX8MPg6wtDgciBXwb
         z+YKtDxQPf0hYg+8hqNk1b5InXB0s1KvQHcmSiW0JsaNHsz1dBPRhb0sy2ucdYKKWr/e
         TQu1L02lC8GeRhytsXjWFK5M4yJXRpcFtOu8l126EpqyYV/xzMP/Y9DMc+ENI5PlYJ5b
         A5NQ==
X-Forwarded-Encrypted: i=1; AKwUvBzCCFwd6NNIo/2u5+sEimglBwXQhCZ1UtkdqhORrQ5mZctpBiT956pfL2On8SpEsE7IDFIJjZnLFLY=@lists.infradead.org
X-Gm-Message-State: AFq9FYLLMmruiKoc+/PvomsRbMy1kEPpXqwD8HKQ5Q4G+SUHp82CQbtW
	Avji9bpi556gOnaT6ZQ6aShNqanMlLi+Ba5HCX4PK5YFb0ZqGE65+CxNxGc+NBMVje+CR4XWSAQ
	3pjtQOfaHITpqvFDJ6cWhUAtQ1u+UGRtY1R395yIckubklmK5y4hNcPL+/da+X5Uw8rv15/uRjC
	fj
X-Gm-Gg: AYBFou09MrTKaAgkIg3nAqhu+i9ItIg+iKifY+bnxCD3p1dqs18rIPuUrwn0lAx7L/1
	ndbVtbAuSerZDpf7EWLn9EOuqXfbmrCeHaERW4NwMRykBlcVjSHTXq/6RwzRpqYVTNbaUwrB7PV
	Fs91mRFe8QAnE2c/WDFPUAommP9UxVDMFFR8+K8aHJNvj6QDypMc/8bCPZqn1cvnbE1/14TyYVc
	W8fBckmCebqRsr0rBxwMi19BoHrBVpKeD6frFF5v6FEQCObzkH3K9OJNTLBuLbjZnbKE7WZoyEE
	eykXOlyS3AyW1n6CbmBRdYV6tj06YD933BIkVyeM7PG4j+htY08kEpEMMfXCJalYXbJ48/EZdiX
	y3Fq4vSyKZlvtujtZJvFYaKHFt9XNHZx5eULgkrM2jXLI/h++Zh1F27T7StKO/Jba
X-Received: by 2002:a05:7022:b055:10b0:148:4d6c:201e with SMTP id a92af1059eb24-16a5faa6965mr17112684c88.23.1791880764409;
        Tue, 13 Oct 2026 01:39:24 -0700 (PDT)
X-Received: by 2002:a05:7022:b055:10b0:148:4d6c:201e with SMTP id a92af1059eb24-16a5faa6965mr17112648c88.23.1791880763693;
        Tue, 13 Oct 2026 01:39:23 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442ac67sm55939416c88.18.2026.10.13.01.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2026 01:39:23 -0700 (PDT)
Message-ID: <6851ca2b-775e-44d7-b437-d04fd4ea4f21@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 14:09:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/5] Modify interrupt handling for eUSB2 Phy targets
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <aszg7Us_ACMMiM9N@debian>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <aszg7Us_ACMMiM9N@debian>
X-Authority-Analysis: v=2.4 cv=VqC2kO2n c=1 sm=1 tr=0 ts=6acdee3d cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SsOP-9FfJHXtHJDkYNsA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: IecCAT2yleb_uaqhWzHXYGVeThZDyu99
X-Proofpoint-ORIG-GUID: IecCAT2yleb_uaqhWzHXYGVeThZDyu99
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfXxUvCip3X3sKv
 YFctvQIs0j4R8owaMTdIMj5AUth7b2d5w076Z5k9fHxX4mw8DHmVQYKFN80t3PH8/El2aZlvPPz
 oQhn3KZqFVgcU+yF9a/nnKGhlA40S7c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfXzC34tt3PObAQ
 v7YBb6fWUUid35P2e0q68oKwWlC2wXfJ3QdwgGlmJD1a6t3PHOw1/ijyz7YEH1VVNuVCcTU5Y5K
 wVd79p+NKxnTTIO9ly18YP0ah6DWb0mSBPP1s6dDSxH6NErF7IBB423BNxK7lU37U19wVoo+ogf
 fP0LCSgar0W3VU/O91Xrh9iW4hfYden3dKpVvsGgf/F6/6g6hNlGZUtMaNoCPhJeP0Cba9nKtGO
 7SJA0NFgU3WBmuzU2HI/jlO75m8lRbpSUvjX2x0411vYm95GsMBMp2nNN3LVDO0oTRL5De/uN07
 dBk3B7wSWY/8eQUY3sKfD7fJ769IBwVibe/1ybLrhQ3clz6WyeKELjJDVVC/U8UQIX0fuoCjUn/
 RsWUJA7w7UczMQbWGmkO6SkN+qYgW5LTotLUAAeLWs5gYYewdR7I7fYOSYjWtIB6kIJF2INJflo
 5suYyIfjZ0e6pJWWK9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_013925_720703_6DC18243 
X-CRM114-Status: GOOD (  15.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 10/12/2026 7:01 PM, Manivannan Sadhasivam wrote:
> On Sat, Sep 05, 2026 at 08:59:04PM +0530, Krishna Kurapati wrote:
>> eUSB2 targets handle wakeup interrupts differently depending on device
>> speed when operating in host mode.
>>
>> According to the eUSB2 specification, remote wakeup signaling in host
>> mode is detected via different data-line assertions based on the
>> connected device speed.
>>
>> When a low-speed device is connected, the host repeater drives eD+ to
>> logic '1' upon detecting a K-state on the USB lines during remote wakeup
>> (eUSB2 specification, Section 5.5.14).
>>
>> When a full-speed or high-speed device is connected, the host repeater
>> drives eD- to logic '1' upon detecting a K-state on the USB line during
>> remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).
>>
>> Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
>> eD- line states, configure the wakeup interrupts accordingly
>>
>> Add support for a new phy "type" attribute to be set by eusb2 phy drivers
>> and be read by consumers (in this case usb controller) and act accordingly
>>
>> Changes pushed on top of usb-testing branch. And v7 is only compile tested.
>>
> 
> I believe the merge strategy is to merge all the patches through PHY tree. If
> anyone feel otherwise, please yell at me.
> 
There is one existing comment from Vinod on v8-2/5:
https://lore.kernel.org/all/3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com/

Once it is addressed, will send v9 on top of phy next.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
