Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE0AD31A3B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNiKc6jwz8nlIt9hqdi/bMdTl0DBZEwnQu3/IYnhmmA=; b=A4YlhE7wS1NYhl
	928UIeLq4DdM3C1lUNsqQD8K5X99FYhkEHoDKN1850j0p8lXC6qffpqmZlDqdZiEsIEXLQIkAb2jB
	y6+OoRi8fwYrc17HlhTzpmQOMEGs12kOHApuneLXtwDXn5zHEDuOn3XigSZs3gQEms8q7QnrPsbXZ
	cWQO/Ag0dAsfKw1F08SSstAQMLVi/uZEf4Fi3Dou17cryfacTtR7z+X4iBKFIfkaASzxjy/9LChlW
	1Ts0ALhfowGEf/qfdV4Wioyn+UyZWZTghqGoOID7c4jLAIHe504SUHBHDZoZVp3+tWU1XTrdPtRL4
	CVj3EBMrBdEQF+RngniA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxTP-00000008cch-27V7;
	Wed, 14 Jan 2026 09:47:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxTK-00000008cbd-1wRa
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:47:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7ja8d2790121
	for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 09:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	99BKTGBFsYNDyPjzQ1FB6HexYu4nx2zw91fFccvYOwQ=; b=VQ8P5KQeWsq5fNOC
	TRWqDvbdtCbpsAzfxnMut/vPb/l+nSLKR6WOTToy0IFDo98LFWyUNwcPo8kzW6wS
	LL0BQEZ1akEvSAtagp92liu7K4xlxbU1XyETsQ5iMBif1+R3mvFanJE72JudTKLc
	Pm8edtiVHZoeuNihBf7fS+BUuku+yd3z5YhBciiI79qk8/EXXjAgSmzD/yXBSccC
	3+5z7EJYsVK/7aQg3qJ3dzljXHdCliUBs4nC2x0UO1wBapTtFu9w34Ou2SCimCjC
	t4y0vgVigADWtqcakC9o7RP+pJgpKV7XjYJwdzHI68vi+Oy5fQUU9LkfSrGExli8
	LmL8Nw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnw7vacs3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 09:47:25 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50148ce6d12so1744531cf.3
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 01:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768384044; x=1768988844; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=99BKTGBFsYNDyPjzQ1FB6HexYu4nx2zw91fFccvYOwQ=;
        b=hWRy1NLFBzsa+FZGP0AVxS14Sosl6A7KJ3Y25kpioqgKWA1aXrkhp1Vu+AErILnx5P
         6Jk04OAsSB+bvVEnovByWEfZwsdKtFSvXDqovMGbhPOcKvnSFn0S3VIxUoHd3wbSoRWg
         8R0UFkN23FZhRU4WwnkX3BYqBuWjqMUnC1M73j9JF4Id/qklb4c7DRNL9hHd1LIQEmpX
         iV1bLaJ5l5P38zWCtgr7xlc/GcTvPq/cCwyFaxheVngZTqhhD0Gfom07enyaoJyH4jbe
         aKCJyGKxjLHGRosNs+BWsOtirNiosWqWHchvS4k8UjkTD0ATsoRl45lOyWh86bGdHZsT
         JbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384044; x=1768988844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=99BKTGBFsYNDyPjzQ1FB6HexYu4nx2zw91fFccvYOwQ=;
        b=wfCJfnPpabzBGBOizYsim6GEr9nbRVMrR9Xbehk2QdXKNRUE2BmnIAwIok2xTIIVuE
         wTCzZOABY3uW4cKYui87HVcEQwxzlaEjw1Abtz4IKqy+twpVJgYAOm3sMk3IrsMmAk5y
         hUhzh8tAl8mjXCNZvfKBMdWcZ1JRWAvj7DZgsM4b6sIiwQT/M9cx+/PmsLEJT7wRqcCB
         Tc5atyrCuIpx4c8j84wrZGwIyreuF9WNLHN7deNh90GTqD5oPALdMKdpmWAOscNRU2et
         yfO6nx687yRGyccFv+GOB5z2/I4Jmgb3Q6S0lFZxNZ9cKhC+hmHe1stK/3mevlqc1rdM
         mVzA==
X-Forwarded-Encrypted: i=1; AJvYcCU+aXTcfsK/7hRvkzgOS2dtgvG5xeZ7xY+ZafS2UpyclonRy1YiEQ5f9fPfR1lYU5rrGjIrxC5ANqg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHoH65cwLNztTqurye7qrGLvuCKEoAobVROSeOZV+dQtoZP2Pq
	gPz828vTwT9TCcNnYX/CuO1fMGh09Iq5w0hMm7ENpwFZjfk7UpbtStkJSjboWqm8zWI6UlrQULU
	yrQ1TBTkF7OVLEAoUCGFT7ALammffqTHnZrmi3mNq58J6KUXXBpT+lU9y2H167OXsiSf6
X-Gm-Gg: AY/fxX41/piRagIg6aAmu4DRUqHKDz0+fF+mgTqeouzL6rSw5aZMwfPQyaIO1ULFkJB
	Va+14S8hatj/N9MLNj5rTjQWKkTdU0j0z0zOka267leLd4HEWa8Hea/qkVZHaeOMh8iJL2xm0UT
	T5qEZYx0IWNh8W/nypNlu3nT9fh+NcPTe5R8kST+dff873TAnrPG/joTWPpE+uAdY5DO5i3n/PT
	UMd6uJyanQPUaspczXheFa0ajwMOKMWsxwaJGsgOb/81Gf8frKh+7zfVz+UkpYnfioJyHPig6UK
	7ruirjiQoY7rybvWUAQU6d0hmctwNnpeY1q0hgbJ2asKsqQQib4LO908FxEZ/EcmYidAYo7JGWN
	LMnpRdIFYAN9XlOodyXUG8E6Mhkn0/WW3WD1X66VB0e8G2IaIRVOwU8S4XzfwHbOmmhE=
X-Received: by 2002:ac8:5a95:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-501484c9737mr17815321cf.8.1768384044483;
        Wed, 14 Jan 2026 01:47:24 -0800 (PST)
X-Received: by 2002:ac8:5a95:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-501484c9737mr17815141cf.8.1768384044059;
        Wed, 14 Jan 2026 01:47:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6648fsm22238117a12.28.2026.01.14.01.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:47:23 -0800 (PST)
Message-ID: <ae46b504-58d3-4042-be05-f31e9e01091b@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 10:47:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
        andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
        sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, mitltlatltl@gmail.com,
        krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
        kernel@collabora.com
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-6-angelogioacchino.delregno@collabora.com>
 <aWdaWY2tWUMllOHH@smile.fi.intel.com>
 <8bf79979-0946-4ed9-b8d4-c442a6e54833@collabora.com>
 <aWdbPze-f_2_5EbL@smile.fi.intel.com>
 <401c5e7b-ff33-44e8-98a5-8cc6af4f2a87@collabora.com>
 <aWdcy2ouQHtkPd6q@smile.fi.intel.com>
 <647b4acc-3310-4329-ac7a-77e86bab74a3@collabora.com>
 <aWdk-RP-59cJeCBo@smile.fi.intel.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aWdk-RP-59cJeCBo@smile.fi.intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA3OSBTYWx0ZWRfXwa82De7is51J
 DkT0BPfsAQcb6YgNK4TAfaLdrEE+KbB2jV3xFM+EXClAZO5Owdm4UARq4HFTnOS9veLbcan2AhB
 oW7+04ApPgDq6RoCyei9o+nsOtrG8GdjbiS4s6WsP61tT3Q6ItPl2CCzvqSMmSohde1VkicRjk0
 /TInEorxZbm0IF9hcw5odxJZ7jVbRYsX7lmynyxumtvg/Mc4LZFJhkBvppNKAgUC17iAVqNz39J
 kDeOWhVj+36KOiOnJeI7nfch1m/GtVWPgXVrVTyra8esy2JDJr52Dv1YnL34boevKQNhf6JwaKM
 do/ANwoqgfOMj324sbt7i4PMsA5mJy3mMpO4MGwCDwngxtRyBMlfSNt0P7XtBcIDsR4l+zeahsc
 e91BopXrT37nAhfm4mDiSccKSrh5oQebY8lutbhed61o/ENwmMY25VRZ0irYk9nXpv4VX29gB2Q
 v77SGK4b5iSX5jJ+WUg==
X-Authority-Analysis: v=2.4 cv=PJ0COPqC c=1 sm=1 tr=0 ts=6967662d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JqKDa6lEAYI_ZU06WeAA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: hLwbstA4mKxe60dCx3l0AtV12aT1gVU-
X-Proofpoint-ORIG-GUID: hLwbstA4mKxe60dCx3l0AtV12aT1gVU-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_014726_529671_C8D8FBE4 
X-CRM114-Status: GOOD (  14.46  )
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

On 1/14/26 10:42 AM, Andy Shevchenko wrote:
> On Wed, Jan 14, 2026 at 10:09:45AM +0100, AngeloGioacchino Del Regno wrote:
>> Il 14/01/26 10:07, Andy Shevchenko ha scritto:
>>> On Wed, Jan 14, 2026 at 10:03:57AM +0100, AngeloGioacchino Del Regno wrote:
>>>> Il 14/01/26 10:00, Andy Shevchenko ha scritto:
>>>>> On Wed, Jan 14, 2026 at 09:59:40AM +0100, AngeloGioacchino Del Regno wrote:
>>>>>> Il 14/01/26 09:56, Andy Shevchenko ha scritto:
>>>>>>> On Wed, Jan 14, 2026 at 09:39:52AM +0100, AngeloGioacchino Del Regno wrote:
> 
> ...
> 
>>>>>>>> +	struct regmap_config sdam_regmap_config = {
>>>>>>>> +		.reg_bits = 16,
>>>>>>>> +		.val_bits = 8,
>>>>>>>
>>>>>>>> +		.max_register = 0x100,
>>>>>>>
>>>>>>> Are you sure? This might be a bad naming, but here max == the last accessible.
>>>>>>> I bet it has to be 0xff (but since the address is 16-bit it might be actually
>>>>>>> 257 registers, but sounds very weird).
>>>>>>
>>>>>> Yes, I'm sure.
>>>>>
>>>>> So, what is resided on address 0x100 ?
>>>>
>>>> I don't remember, this is research from around 5 months ago, when I've sent
>>>> the v1 of this.
>>>>
>>>> If you really want though, I can incorrectly set max_register to 0xff.
>>>
>>> Why incorrectly? Can you dig into the datasheet and check, please? We don't
>>> know what is the 0x100 address means.
>>
>> I don't have any datasheets for Qualcomm IPs.
> 
> Hmm... Can we have somebody from QC to check on this?
> Perhaps Dmitry?

0xe6 is the last usable register today

But I wouldn't mind either 0xff or 0x100 because I don't want
anyone to pull their hair out if a regmap access is dropped some day..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
