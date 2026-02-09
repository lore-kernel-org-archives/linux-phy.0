Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4015AE78D44
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 09:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMN1s9g54IKUKZCaFE/2quXlCeKl6XbcyZZYYudM6KQ=; b=lFaUjeijtWIbgJ
	tpRkEgcQuMhFDMGqqgm+9nWOBKpdqViOMZm3PMTLwp75O20We1fY5iOtOtVbeFFXyF3c9sbZnAgoE
	SbcuJOhqflPFx7gCDTo/0UvC/dyxIe+C7LSYJk4VH+rxCNh1PYDe8B9CPxIip7dA192bLPbV8GMiH
	S70Q7xUuuxGbSax7s0gwIFwPpKKzXbs7ZpSypfU0qsugCQezxmlD1TX5bxJ4kdExQkj7AZhD/RESO
	1RZ3msoZhMc8E6zxTnidtspKZhrZAxPvtTb00RF1MA5bINMueA9mvupmrUDGks+eqOclQQ8B+6ODF
	sG1PqVUSNyZXNprYLijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpN7w-0000000F4qw-3DPh;
	Mon, 09 Feb 2026 09:00:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpN7t-0000000F4qI-2ofz
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 09:00:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195NA4P3346987
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 09:00:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rsHe/eCYXZfn+o6g3cKdFK89q6nh4pHcLJ8DqEGc4hI=; b=k27d8u/QNzSV9Ek9
	KxUUl52EAEv/kO9BqfAjHeIfjHmHoMTO/xNa+sCKZFLfZjv4/Rqxgagmu+MLSekC
	hV5TAdrT+5sjfbsi5Xd6rnWPCpx7G6Ex2RHsJ21JdfdCYRJbVB4nkNCI5FiVNxyW
	hfziXgpgh6QOHkwbVmZZb02Cw1QGTCaVbNUBdc964KtVAFPbwx29xH2DmuhJAq+o
	YZMyIlipVfzAIaGLdG3y2h5o7BkClKTDE5Sl976Ie7HVb9AcXc8LF2zSzRVgEP3u
	iUwVoRqFdE8aZG7E+PXRC8Zmbc385Da3Ukj3Kl1b/B9lN5n2wYpz4orUmcbX7khF
	P2QjNg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79cy0qb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 09:00:11 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8243e218869so1460678b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 01:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770627610; x=1771232410; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rsHe/eCYXZfn+o6g3cKdFK89q6nh4pHcLJ8DqEGc4hI=;
        b=G2ihIo4m7ZnwVwj5PYm5LxrrWeCO/ngL8ZxifHj5TpJQJDbo4luviNq6H4lbZoLXWO
         cu9HDVY3AizyLPUFuN1rjLNgQWHGeDx8tJL64aT4MTdXfFbc233zXo0z3GN6S5Xmzmjl
         TG2Taw8klMRXnS26RASxbnzg3c6ZQtMkZbmR+4w3W7GM37ySOYYtqaVjtF5XRlEBTWh9
         QlcCtiA6fXj5zsmDy3rCkBrVfT/LrVrNdr/dexxjMCDktcVEjFGIOSOezljTxsswANFT
         hZfXXVbIbnMZdQyyqsNAKiXV8iaf+/aQPYh+PDlRvDbDTHekjaFAaGtLH/T4cZZ+l2VP
         qbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770627610; x=1771232410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsHe/eCYXZfn+o6g3cKdFK89q6nh4pHcLJ8DqEGc4hI=;
        b=RbwOzK3QxfysmMHxW4TA0KbsucdNDkEE70wdFD2t2jAbPpZxWOUN/4OE52+LnzPZcm
         rIYBriOfMJRdTYv5UQm0tG9ooUIRQzePlu4vwNb6Kadzy6D8jWE3PlVVFKQVxKgF0Ymw
         LoylrGRzLVa43H8qOtTxKdNaFcfeQQ5rgPj5EcgFjOONFgVcrjzb7sIae4hKcBObOaLO
         hPIPQz02LzwhcXaJt9zvHHXamvko0Gk7RV1b6j7jvLisI8L0RIe451SXWbgGRTNpuwcp
         /btJeqNrCjurv9oADC896mt51+K/lTHOlDttw0JVf8vd3xOzteQLo2yk8i21GvbYk6g6
         oMhg==
X-Forwarded-Encrypted: i=1; AJvYcCXYCxlyhkpEYuqu2lK6d0DS7tDFB1poZNUDjh4LO4al78if7maWwRbTW1P1kqfdULLJyFhyNsnx0aY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzB42vgFYIZpwNcg7//aCk78j5aD7jTpYoUGPASQ9T2752+NHma
	v7kLsXAdhOCsvFE99VEAsr8iX7DRlE4rxNTfzM0XGogR7MTM4boK4p2X1DHwIdyQ55tvFV6MNLW
	sMy6dXiXoPiOF0q70Y+c49muxLNyPMDqGwDf1Or/+ATlZrSlvZNonDQqRKDHM3bVPQti+
X-Gm-Gg: AZuq6aK7zf6Mm9o7t2R1EztRRQb26kZhHHM6aAUZrq+Euq4MdjYh4KuygaTeWioYsvT
	25AwbUQDGwrwUQ8qBaCSK1qzySI/Eaxl8x1PkToJv5+UmM4TZ8r7R4rwzU0NDZmaal8AdvODlXl
	qJ6XlsxEnndZugiNoCKa2v2qmjU2mdg1Nzzk+JqA23tw/eXpxdjql2rwxLqLYrh+HPeljuykHDG
	Pi7SrSpRg5nx5JpWuDYsmIT6rGIZ1A6M4LUPRlVZ38IvtctG8benYhyB//4bJCTTmiWYZKw54qu
	pLzroyzB1xgTe5kLM2d80vG+bgbK7Mwal2koLlxbL4XC5RQRqC+JmUCmBdASywlZ23T8m5MDWnI
	izW9idYnGi9aQYovVAzfQaZZqJE6gMEIyDNj4tuhsk7HI13JiO66EMyoozBmObmIl91o8T8QxUk
	sLM/0=
X-Received: by 2002:a05:6a00:21c4:b0:824:188b:c173 with SMTP id d2e1a72fcca58-824415ff154mr10083405b3a.5.1770627610073;
        Mon, 09 Feb 2026 01:00:10 -0800 (PST)
X-Received: by 2002:a05:6a00:21c4:b0:824:188b:c173 with SMTP id d2e1a72fcca58-824415ff154mr10083329b3a.5.1770627609139;
        Mon, 09 Feb 2026 01:00:09 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441675468sm9304804b3a.13.2026.02.09.01.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 01:00:08 -0800 (PST)
Message-ID: <92556aa2-607f-4743-a480-19458836fffa@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 17:00:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <1b78ea12-84ba-467e-b541-1ffd2348f38c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: miLB1qFvWxPPMKzht--_wXs8niP35vl4
X-Proofpoint-GUID: miLB1qFvWxPPMKzht--_wXs8niP35vl4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3NCBTYWx0ZWRfX0RAiC7TPr4+3
 6cGmbIhPTXuUXQXqNmviUa9zxu2MJxx7KsUl67Z4MdiwXFA+b1mD2vZIPIrWQNRfGN1RKNn7wdt
 LYQjGyQbQ+arH3U56yxJoSbVi/s9lwgaAEzjpO4nkEIMPC3jqG3tCGUTWfjycM6BarV2VpVmAth
 ty4S/jE7E64IV49zAT8eqbutkSM9owW4UAJMmWMhfOpT0gaaOl3+aA0Bqmcm6Kk3leQRfxVG7hw
 JHdhqyLmO+XKMSlI4NpNF2PiRgMFJh/vZm9lAlz/EpmdGIE8u6Nv4rrAih9JNNxFtcUzFl+mWif
 jLmzFjeO33MIm8v5uFMjzE/p/rgg3pSjqrnkoVg32OrYhvFy8UY75dr8aoanvf+8NiFJ1BGn1I6
 OolT4sSQfHankmmKH46RzfnN1Mlxt+wP82d79XaYuAZSOnljXvPFs/eRnas5Qa9dofOjuenq7dF
 zM/dmJ2dGysGeNSYCEg==
X-Authority-Analysis: v=2.4 cv=EtvfbCcA c=1 sm=1 tr=0 ts=6989a21b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=UlKCwhGw83CaZuK5wCwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010013_829632_ACB83F52 
X-CRM114-Status: GOOD (  17.75  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyLzYvMjAyNiA2OjQ3IFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDIvNS8yNiAx
MDoyMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+PiBBY2NvcmRpbmcgdG8gdGhlIGN1cnJlbnQg
SFBHIHNldHRpbmdzLCBtb3N0IGVEUC9EUCBjb21ibyBQSFlzIGNhbiByZXVzZSB0aGUKPj4gc2Ft
ZSBjb25maWd1cmF0aW9uIHZhbHVlcy4KPiAKPiBFdmVuIGFjcm9zcyB0aGUgdmFyaW91cyBwcm9j
ZXNzIG5vZGVzPwo+IApFbW0sQ3VycmVudGx5LCBJIGhhdmUgb25seSBjaGVja2VkIHRoZSBmaXZl
IHBsYXRmb3JtcyB0aGF0IGFscmVhZHkgaGF2ZSAKZURQIFBIWSBkcml2ZXIgc3VwcG9ydCBlbmFi
bGVkLiBUaGUgcmVzdWx0cyBhcmUgdGhlIHNhbWUgYXMgc3RhdGVkIGluIAp0aGUgY29tbWl0IG1l
c3NhZ2U6IGluIERQIG1vZGUgYW5kIGluIGVEUCBsb3figJF2ZGlmZiBtb2RlLCB0aGVyZSBhcmUg
Zm91ciAKcGxhdGZvcm1zIHRoYXQgY2FuIHJldXNlIHRoZSBzYW1lIHNldHRpbmdzLiBUaGUgSFBH
IEkgdXNlZCB3YXMgdGhlIG9uZSBJIApmb3VuZCBvbiBJUENBVC4gUmVnYXJkaW5nIEhSRywgcGxl
YXNlIG1vdmUgdG8gbmV4dCBjb21tZW50Lgo+PiBEUCBtb2Rl77yaCj4+IAktc2E4Nzc1cC9zYzcy
ODAvc2M4MjgweHAveDFlODAxMDAKPj4gCS1nbHltdXIKPj4gZURQIG1vZGUobG93IHZkaWZmKToK
Pj4gCS1nbHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEwMAo+PiAJLXNjNzI4MAo+PiBUaGUg
Y3VycmVudCBkcml2ZXIgc3RpbGwga2VlcHMgbXVsdGlwbGUgdmVyc2lvbnMgb2YgdGhlc2UgdGFi
bGVzIGFuZAo+PiBkb2Vzbid0IGZ1bGx5IHN1cHBvcnQgZXZlcnkgY29tYm8gUEhZIG1vZGUuIFRo
aXMgcGF0Y2ggcmVtb3ZlcyB0aGUKPj4gcmVkdW5kYW50IGNvbmZpZ3MgYW5kIGtlZXBzIG9ubHkg
dGhlIHNldHMgd2UgYWN0dWFsbHkgdXNlLCBtYXRjaGluZyB0aGUKPj4gcGxhdGZvcm1zIGxpc3Rl
ZCBhYm92ZS4KPiAKPiBJIHNlZSB0aGF0IGUuZy4gZURQIExvdy1WZGlmZiBzd2luZyBzZXR0aW5n
IGZvciBSQlIgaXM6Cj4gCkhpLCBkbyB5b3UgbWVhbiBlbXBoYXNpcyBzZXR0aW5ncywgaSBkb24n
dCBzZWUgMHgxMQkweDEyIGluIGFyclswXVsxXS4KPiAJCWhhbW9hCWtvZGlhawo+IGFyclswXVsx
XQkweDExCTB4MTIKPiAKPiBJdCBtYXkgYmUgdGhhdCB0aGlzIGNoYW5nZWQgbGF0ZXIgZHVyaW5n
IHR1bmluZyBidXQgaXQncyBub3QgcmVmbGVjdGVkCj4gaW4gdGhlIGRvY3MgZm9yIGtvZGlhawpF
bW0sIGlmIHRoYXQsIHdoZXJlIGNhbiBpIGdldCB0aGUgY29ycmVjdCB2YWx1ZSBmb3IgdGFibGVz
Li4gSW4gdGhpcyAKcGF0Y2gsIEnigJltIGluZGVlZCBxdWl0ZSBjdXJpb3VzIHdoeSB0aGUgdmFs
dWVzIGJlZm9yZSB0aGUgbW9kaWZpY2F0aW9uIApkaWZmZXIgZnJvbSB0aG9zZSBpbiB0aGUgSFBH
LiBJ4oCZbSBub3Qgc3VyZSBhYm91dCB0aGUgcmVhc29uLiBUaGUgSFBHIEkgCnVzZWQgd2FzIHRh
a2VuIGRpcmVjdGx5IGZyb20gdGhlIGN1cnJlbnQgZ28vaXBjYXQuIENvdWxkIHlvdSB0ZWxsIG1l
IAp3aGVyZSBJIGNhbiBvYnRhaW4gdGhlIGZpbmFsIHRhYmxlIHRoYXQgc2hvdWxkIGJlIHVzZWQ/
Cj4gCj4gS29ucmFkCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
