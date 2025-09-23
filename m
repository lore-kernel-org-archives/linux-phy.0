Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEEE1CAC5A5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 03:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EViXzZo94VIu2jX8VcUeJyOSw68vVUogW4nsdA6Gwo=; b=izkUhenmCG8OIM
	eKuQCpQJG7IVXhIp9vF2wUJxbltmj0HsYuJ1G2ZQfufw9Am89htPTaC5luk84OAW7pkYv0ssuo8/V
	Pm8PCeawrrjJWEo85tNVbSlI1OZoXjBQdoV4z81lLSi9PZf8Wynl+ckThkMc1eIzrEr+zok1np+rO
	fAID9BVgFI6BCEUN4du3tayAGQrMj1NRmH8+C7ihegqnZ8tg6RP+fOxkstHylgmcgS4PbqxjNSkg6
	VHCnmA/ItTJafajg+1lryf/w1SMUbsVUHsR0qnNQcBi5xYdxDyGmypr/SL16QuDT5g0l5LnLavazF
	4ePlhP8t3UtQaTGDkG2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0u1C-0000000CGvv-1MZp;
	Tue, 23 Sep 2025 03:48:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0u1A-0000000CGv9-2brT
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 03:48:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MH6Yjg028844
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:48:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2tzkEhv21yTBLeb655r/JRLn+hEu6MSXtvaBf3prN/k=; b=mR0xTMk7SYm1YjCV
	WkPMqhpmOqIXsElhJzbZ7XVz/ATIzxT1wf+Mp2nHpYBOQtv5GqqYlZEZnNjyMMDg
	aoErKwfUe+1uuEYXWKMXU5vH2/HJuXe7Yeyr4C54NJ9UakD8DwoSl1SUyH3m3Ish
	gZ9xpv87yBI+jo4DGggh54wuhBTnyEbdM4vymCLSz6KDnDaJSgonExwBYMSAP+iY
	3ihwjPNdcv2haCwKexoWhhKFor12Bgv+JpnpatS9XkP+tGyoB95DWNj4lholDFl1
	LfwU/5/n559eoA9pMByq0sjByOob47xx94qh1roNBcvVROJMH45FqkJ3IqVx5jRb
	7Q2Piw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajesfvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 03:48:39 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5506a5fa7cso502734a12.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:48:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758599319; x=1759204119;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2tzkEhv21yTBLeb655r/JRLn+hEu6MSXtvaBf3prN/k=;
        b=wIgBmQJ2jRVfjcbww1CRAvvlwTRmJWyrB1QbSyGeycFSBRsCA9AaYpDygalpdoeEjz
         BQDOXnRJhm121dz/EilIaznAutwTe5yRTrBKfGQSoKFIk1mBu9oXfut5/vwMcvJLSVh5
         1DddwAQc+WuWT2dBmSkirF5MkQFhj7G5xeoDhsVADHUbh5WipdTnL8ZkpEIpmqJp0ICd
         Dd+4PwQF9EoBs2OmI6rCMDbPqPiKPg6FxDK3BLE6xSDpRLe5R0wC2IQ83b6ZBXMkmU3j
         8GMBKtYh1WHRgCWFrT9hAETD1W12OoIdADVp8WvilvqnxNRNmpwv8vhDKvujVAWlNv2s
         fl0w==
X-Forwarded-Encrypted: i=1; AJvYcCV5CxSNHz81A91QHwjoPe1/c/OoIllhZmydEG7mQAR57seuTO18YK9/D03BljxFCei/IO0T6dr16jU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVRAx9Vn/mmbbNxR0VQ3pLdgCk4kHJiBBKLv67DkZuCY2uqNgY
	EKJXXJh48MWcFzbne40m98Nd70HVU9pafLY5V7sO4VD6L5mZQYaX4qm3Tj/LkiuAMbIfgFxffgs
	+esBbTg5Rn22+zRDiZzUFlp8zsnv63wemcz+FDveg8rx/Bvu/Q5pksPhdwWGUII1Y/8hU
X-Gm-Gg: ASbGncuJAofDHhuoL8PzTI4/bhqqUMf0MaRywFDq6BbUaIUCMnM6bsIhpZbSNvtA0qu
	TJRp8L4ruszsjPVpwhV4V2rvwbg4qPtNC0m/dBH50geJXQFhb1g/7BbecDLElmcM9NaDFjaRKdQ
	hukXQmzeIVreAeuZqgNRtzyh1FTkWJdgkNXCytPcahJmASo296JII/ddqEnTHu6wWxL4kxeuMjf
	teafymzm4S1B9EQaRxqymTpJT7W7ypXLk0eQyK3k0O8Dfcyhyuo/64JLVHku9lXaZqXVz/+vCpo
	AIGwqBFT//ng/LITnDoYHaOy9nsKJm3Qor2oozasvbHwlzDs0ODStoKzoqAAvuqY480pOvdVfzo
	WD6OWtCGj3rH5si76FBIgGROKKDoqVWvK+E8=
X-Received: by 2002:a17:902:cecd:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27cc3ef18c4mr7163125ad.5.1758599319021;
        Mon, 22 Sep 2025 20:48:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuGCVKMlhrcuNyLUyo+F4+9Dcxv31AiSgDCtjDNN8GbHcs7dWnyk69V9F4hUnIXmzLqt7jMw==
X-Received: by 2002:a17:902:cecd:b0:26b:1871:1f70 with SMTP id d9443c01a7336-27cc3ef18c4mr7162965ad.5.1758599318561;
        Mon, 22 Sep 2025 20:48:38 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016bea0sm148159875ad.40.2025.09.22.20.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 20:48:38 -0700 (PDT)
Message-ID: <83e8c8b6-fd2c-41f5-8732-703d47764d0f@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 11:48:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
 <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
 <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
 <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
 <28eef277-c778-4ffe-94c6-2e90d58633de@oss.qualcomm.com>
 <bonlc3rnfizezrobyuazv2cmyu3hqqck7tbk2g5ryln24eiwno@jxsz2rg2dyex>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <bonlc3rnfizezrobyuazv2cmyu3hqqck7tbk2g5ryln24eiwno@jxsz2rg2dyex>
X-Proofpoint-GUID: iaDACyv6d8QawHumyLMOCMnq_HsWBDzD
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d21898 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NbDaqmtucRuFR4rafzwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXzn1PgDhWi/xw
 CI9sAQ6tj0OHDchYodk6uBzPL7EYOqc5IJ/HuP9r2eTf72fHGW+bTYv99twUS+1xsNP5qyGWnm5
 QZpr4JA5LSnXjdhf3S7Kl8CrPqn2WfV/g3df/lH7HhmX1S9Y//Pw8SczyaZL0cqmG/o87+Bk5Fc
 BBTHTWGa/0+8AqqjLpEGYvMjXWdKIRXfPdfMcGxxPoVVVrUOFNqvBjnF+UuyJorcK7p5/LVslJt
 XA7B6ZlSU6A5D1ekmmAJ3OqDiCKDMsuUkaPZ84s3Y6PEwJIhIfwmhHgRLasAlB2D6wy5n4ThBwl
 ZTlGF14nrN0tOariXQ7Bhu1Fkn3nA1p/Rax5uWvLy2QsweNlXUxVGJ/N/PlJmx5onY80oydZbe3
 /P0NCtbT
X-Proofpoint-ORIG-GUID: iaDACyv6d8QawHumyLMOCMnq_HsWBDzD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_204840_688861_452F0499 
X-CRM114-Status: GOOD (  23.06  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDkvMjMvMjAyNSA3OjM4IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDA3OjI4OjE3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA5LzIyLzIwMjUgNTo0NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDAyOjU4OjE3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+
IE9uIDkvMjAvMjAyNSAyOjQxIEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+PiBPbiBG
cmksIFNlcCAxOSwgMjAyNSBhdCAxMDoyNDoyOVBNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToK
Pj4+Pj4+IEFkZCBRQ1M2MTUtc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmb3IgVVNCL0RQIFBIWSwg
aW5jbHVkaW5nIERQIGluaXQKPj4+Pj4+IHJvdXRpbmVzLCB2b2x0YWdlIHN3aW5nIHRhYmxlcywg
YW5kIHBsYXRmb3JtIGRhdGEuIEFkZCBjb21wYXRpYmxlCj4+Pj4+PiAicWNzNjE1LXFtcC11c2Iz
LWRwLXBoeSIuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5n
eHUueWluQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jIHwgMzk1ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMzk1IGluc2VydGlvbnMoKykKPj4+Pj4+
Cj4+Pj4+PiArCj4+Pj4+PiArCXdyaXRlbCgweDNmLCBxbXAtPmRwX3R4ICsgUVNFUkRFU19WMl9U
WF9UUkFOU0NFSVZFUl9CSUFTX0VOKTsKPj4+Pj4+ICsJd3JpdGVsKDB4MTAsIHFtcC0+ZHBfdHgg
KyBRU0VSREVTX1YyX1RYX0hJR0haX0RSVlJfRU4pOwo+Pj4+Pj4gKwl3cml0ZWwoMHgwYSwgcW1w
LT5kcF90eCArIFFTRVJERVNfVjJfVFhfVFhfUE9MX0lOVik7Cj4+Pj4+PiArCXdyaXRlbCgweDNm
LCBxbXAtPmRwX3R4MiArIFFTRVJERVNfVjJfVFhfVFJBTlNDRUlWRVJfQklBU19FTik7Cj4+Pj4+
PiArCXdyaXRlbCgweDEwLCBxbXAtPmRwX3R4MiArIFFTRVJERVNfVjJfVFhfSElHSFpfRFJWUl9F
Tik7Cj4+Pj4+PiArCXdyaXRlbCgweDBhLCBxbXAtPmRwX3R4MiArIFFTRVJERVNfVjJfVFhfVFhf
UE9MX0lOVik7Cj4+Pj4+IEFyZSB5b3Ugc3VyZSB0aGF0IHRoZXNlIGRvbid0IG5lZWQgdG8gYmUg
YWRqdXN0ZWQgYmFzZWQgb24KPj4+Pj4gcW1wLT5vcmllbnRhdGlvbiBvciBzZWxlY3RlZCBsYW5l
cyBjb3VudD8KPj4+Pj4KPj4+Pj4gSW4gZmFjdC4uLiBJIGRvbid0IHNlZSBvcmllbnRhdGlvbiBo
YW5kbGluZyBmb3IgRFAgYXQgYWxsLiBEb24ndCB3ZSBuZWVkCj4+Pj4+IGl0Pwo+Pj4+IFRoYW5r
cyBmb3IgdGhlIHJldmlldy4KPj4+Pgo+Pj4+IEkgYWdyZWUgd2l0aCB5b3VyIHJlYXNvbmluZyBh
bmQgY29tcGFyZWQgdGFsb3MgMTRubSBIUEcgd2l0aCBoYW5hL2tvbmEKPj4+PiA3bm0gUEhZIEhQ
RzsgdGhlIDdubSBDT01CTyBQSFkgc2VyaWVzIGhhcyBvcmllbnRhdGlvbi9sYW5lLWNvdW50IGRl
cGVuZGVudAo+Pj4+IGNvbmZpZ3MsIGJ1dCB0aGUgMTRubSBQSFkgc2VyaWVzIGRvZXMgbm90LiBP
biBRQ1M2MTUgKHRhbG9zKSwgdGhlIFRYXyoKPj4+PiByZWdpc3RlcnMgeW91IHBvaW50ZWQgdG8g
YXJlIHByb2dyYW1tZWQgd2l0aCBjb25zdGFudCB2YWx1ZXMgcmVnYXJkbGVzcwo+Pj4+IG9mIG9y
aWVudGF0aW9uIG9yIGxhbmUgY291bnQuIFRoaXMgaGFzIGJlZW4gY29uZmlybWVkIGZyb20gYm90
aCB0aGUgSFBHCj4+Pj4gYW5kIHRoZSBkb3duc3RyZWFtIHJlZmVyZW5jZSBkcml2ZXIuCj4+PiBU
aGFua3MgZm9yIHRoZSBjb25maXJtYXRpb24uCj4+Pgo+Pj4+IEZvciBvcmllbnRhdGlvbiwgZnJv
bSByZWZlcmVuY2UgdGhlIG9ubHkgZGlmZmVyZW5jZSBpcyBEUF9QSFlfTU9ERSwgd2hpY2gKPj4+
PiBpcyBzZXQgYnkgcW1wX3VzYmNfY29uZmlndXJlX2RwX21vZGUoKS4gVGhlIERQIFBIWSBkb2Vz
IGhhdmUgYW4KPj4+PiBTV19QT1JUU0VMRUNULXJlbGF0ZWQgcmVnaXN0ZXIsIGJ1dCBkdWUgdG8g
dGFsb3MgbGFuZSBtYXBwaW5nIGZyb20gdGhlCj4+Pj4gRFAgY29udHJvbGxlciB0byB0aGUgUEhZ
IG5vdCBiZWluZyB0aGUgc3RhbmRhcmQgPDAgMSAyIDM+IHNlcXVlbmNlLCBpdAo+Pj4+IGNhbm5v
dCByZWxpYWJseSBoYW5kbGUgb3JpZW50YXRpb24gZmxpcC4gQWxzbywgUUNTNjE1IGlzIGEgZml4
ZWQtCj4+Pj4gb3JpZW50YXRpb24gcGxhdGZvcm0gKG5vdCBEUC1vdmVyLVR5cGVDKSwgc28gdGhl
cmUgaXMgbm8gdmFsaWRhdGVkIGhhcmR3YXJlCj4+Pj4gcGF0aCBmb3Igb3JpZW50YXRpb24gZmxp
cCBvbiB0aGlzIHBsYXRmb3JtLgo+Pj4gV2FpdC4uLiBJIHRob3VnaHQgdGhhdCB0aGUgdGhlIG5v
bi1zdGFuZGFyZCBsYW5lIG9yZGVyIGlzIGhhbmRsZWQgYnkgdGhlCj4+PiBEUCBkcml2ZXIsIHRo
ZW4gd2Ugc2hvdWxkIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBvcmllbnRhdGlvbiBpbnNpZGUgUEhZ
Cj4+PiBkcml2ZXIgYXMgdXN1YWwuCj4+Cj4+IFllcywgSSBoYXZlIGNvbmZpcm1lZCB0aGlzIHdp
dGggb3VyIHZlcmlmaWNhdGlvbiB0ZWFtLgo+Pgo+PiBGb3IgdGhlIG5vbi1zdGFuZGFyZCBsYW5l
IG9yZGVyLCBoYW5kbGluZyBmbGlwIHJlcXVpcmVzIHN3YXBwaW5nIG1hcHBlZMKgCj4+IGxhbmUg
MCDihpQgbGFuZSAzIGFuZCBsYW5lIDEg4oaUIGxhbmUgMiBpbiB0aGUgbG9naWNhbDJwaHlzaWNh
bCBtYXBwaW5nLgo+PiBUaGlzIGlzIGEgaGFyZHdhcmUgbGltaXRhdGlvbiwgYW5kIHdpdGggdGhl
IGN1cnJlbnQgUEhZIGRyaXZlciB3ZSBjYW5ub3QKPj4gcHJvcGFnYXRlIG9yaWVudGF0aW9uIHN0
YXR1cyB0byBkcF9jdHJsIGZvciBwcm9jZXNzaW5nLgo+IFRoaXMgbWlnaHQgbWVhbiB0aGF0IHdl
IG1pZ2h0IG5lZWQgdG8gbWFrZSBEUCBob3N0IHJlY2VpdmUgbXV4Cj4gbWVzc2FnZXMuLi4KCgpZ
ZWFoLCBkb3duc3RyZWFtIGhhbmRsZXMgdGhpcyBieSBwYXNzaW5nIG9yaWVudGF0aW9uIGFuZCBs
YW5lX2NudCBpbmZvIHZpYSB0aGUKRFBfUEhZX1NQQVJFMCBQSFkgcmVnaXN0ZXIuIEJ1dCBldmVu
IHdpdGggdGhhdCBhcHByb2FjaCwgZHBfY3RybCB3b3VsZCBzdGlsbMKgCm5lZWQgYWNjZXNzIFBI
WSBhZGRyZXNzIGFyZWEuCgpMZXQncyBzZWUgaWYgdGhlcmXigJlzIGFueSBmb2xsb3ctdXAgb24g
ZXh0ZW5kaW5nIHRoaXMgaW4gdGhlIGZ1dHVyZS4KCgo+Pgo+Pj4gQW55d2F5LCBwbGVhc2UgYWRk
IGEgRklYTUUgY29tbWVudCBpbnRvIHRoZSBzb3VyY2UgZmlsZSBhbmQgYSBub3RlIHRvCj4+PiB0
aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCBTV19QT1JUU0VMRUNUIHNob3VsZCBiZSBoYW5kbGVkLCBi
dXQgaXQncyBub3QgYQo+Pj4gcGFydCBvZiB0aGlzIHBhdGNoIGZvciB0aGUgc3RhdGVkIHJlYXNv
bnMuCj4+Cj4+IE9LLCBJIHdpbGwgYWRkIGEgfEZJWE1FfCBjb21tZW50IGluIHxxbXBfdXNiY19k
cF9wb3dlcl9vbnwgYW5kIHVwZGF0ZSB0aGUKPj4gcmVsYXRlZCBjb21taXQgbWVzc2FnZS4KPiBU
aGFua3MhCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
